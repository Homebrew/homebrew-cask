cask "inkstitch" do
  version "3.3.0"

  on_monterey :or_older do
    sha256 "0e4a39a7dfc62b8ec84b110dc3a9ccceff52fa1b92940e19d34dd04e16dcfca4"

    url "https://github.com/inkstitch/inkstitch/releases/download/v#{version}/inkstitch-#{version}-old-osx-x86_64.pkg"

    pkg "inkstitch-v#{version}-old-osx-x86_64.pkg"

    caveats do
      requires_rosetta
    end
  end
  on_ventura :or_newer do
    arch arm: "arm64", intel: "x86_64"

    sha256 arm:   "eb48bbed6b58438427accc5adc079f41d4ad3a82a3ebeeb04af93f204a529b2f",
           intel: "756485679c1de66d9052571200695a7e247829ef8bef99bf2e336afdd2c93b57"

    url "https://github.com/inkstitch/inkstitch/releases/download/v#{version}/inkstitch-v#{version}-osx-#{arch}.pkg"

    pkg "inkstitch-v#{version}-osx-#{arch}.pkg"
  end

  name "Inkstitch"
  desc "Inkscape extension for machine embroidery design"
  homepage "https://inkstitch.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos
  depends_on cask: "inkscape"

  preflight_steps do
    # This needs to exist, otherwise the installer gets stuck at a prompt asking the user to run Inkscape first.
    mkdir_p "Library/Application Support/org.inkscape.Inkscape/config/inkscape/extensions", base: :home
  end

  uninstall pkgutil: "org.inkstitch.installer",
            delete:  "~/Library/Application Support/org.inkscape.Inkscape/config/inkscape/extensions/inkstitch"

  zap trash: "~/Library/Application Support/inkstitch",
      rmdir: "~/Library/Application Support/org.inkscape.Inkscape/config/inkscape/extensions"
end
