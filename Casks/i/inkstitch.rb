cask "inkstitch" do
  version "3.2.2"

  on_monterey :or_older do
    sha256 "0e4a39a7dfc62b8ec84b110dc3a9ccceff52fa1b92940e19d34dd04e16dcfca4"

    url "https://github.com/inkstitch/inkstitch/releases/download/v#{version}/inkstitch-#{version}-old-osx-x86_64.pkg",
        verified: "github.com/inkstitch/inkstitch/"

    pkg "inkstitch-v#{version}-old-osx-x86_64.pkg"

    caveats do
      requires_rosetta
    end
  end
  on_ventura :or_newer do
    arch arm: "arm64", intel: "x86_64"

    sha256 arm:   "fb9f62931eddd7e0ebdf2364651738d5c825222f4c17939b881a67cd3a44012e",
           intel: "6a143c5bf4f007009cb51b0b7ddcbd4ee3d45d908d7c1a59d3a112ef6cd130ec"

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
