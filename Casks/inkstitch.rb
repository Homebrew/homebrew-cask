cask "inkstitch" do
  version "3.0.0"

  on_sierra :or_older do
    sha256 "7a52e13a01dc74fd3267aa0efb1b0718c2463d88fbcca4c06822ab8065f936d1"

    url "https://github.com/inkstitch/inkstitch/releases/download/v#{version}/inkstitch-v#{version}-capitan-catalina-osx.pkg",
        verified: "github.com/inkstitch/inkstitch/"

    pkg "inkstitch-v#{version}-sierra-osx.pkg"
  end
  on_high_sierra :or_newer do
    sha256 "ff4b1edddd8ca20816f9d80bfed7293e6ab05b2e6bb0ed7370ab638be6960c04"

    url "https://github.com/inkstitch/inkstitch/releases/download/v#{version}/inkstitch-v#{version}-osx.pkg",
        verified: "github.com/inkstitch/inkstitch/"

    pkg "inkstitch-v#{version}-osx.pkg"
  end

  name "Inkstitch"
  desc "Inkscape extension for machine embroidery design"
  homepage "https://inkstitch.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "inkscape"
  depends_on macos: ">= :el_capitan"

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
