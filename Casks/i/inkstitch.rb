cask "inkstitch" do
  version "3.2.1"

  on_monterey :or_older do
    sha256 "19887ee1ec0265f52d81b39e58dce6ba0067c0977c4c234aa1b0c4095f6fbc2d"

    url "https://github.com/inkstitch/inkstitch/releases/download/v#{version}/inkstitch-#{version}-old-osx-x86_64.pkg",
        verified: "github.com/inkstitch/inkstitch/"

    pkg "inkstitch-v#{version}-old-osx-x86_64.pkg"

    caveats do
      requires_rosetta
    end
  end
  on_ventura :or_newer do
    arch arm: "arm64", intel: "x86_64"

    sha256 arm:   "93403b7aa4ac5e96d3f28c9f4e437f3bdd0f389c3a34ad23d197a1ccc18dd8e4",
           intel: "f7bfcc30cd61beb146f0bb91d6536c973cd7717f2e665ba0a5019a7a46f5a4f7"

    url "https://github.com/inkstitch/inkstitch/releases/download/v#{version}/inkstitch-v#{version}-osx-#{arch}.pkg",
        verified: "github.com/inkstitch/inkstitch/"

    pkg "inkstitch-v#{version}-osx-#{arch}.pkg"
  end

  name "Inkstitch"
  desc "Inkscape extension for machine embroidery design"
  homepage "https://inkstitch.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  depends_on cask: "inkscape"
  depends_on macos: ">= :high_sierra"

  preflight do
    # This needs to exist, otherwise the installer gets stuck at a prompt asking the user to run Inkscape first.
    inkscape_extensions = Pathname("~/Library/Application Support/org.inkscape.Inkscape/config/inkscape").expand_path
    inkscape_extensions.mkpath
  end

  uninstall pkgutil: "org.inkstitch.installer",
            delete:  "~/Library/Application Support/org.inkscape.Inkscape/config/inkscape/extensions/inkstitch"

  zap trash: "~/Library/Application Support/inkstitch",
      rmdir: "~/Library/Application Support/org.inkscape.Inkscape/config/inkscape/extensions"
end
