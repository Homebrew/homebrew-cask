cask "marble" do
  version "2.2.0"
  sha256 "51397a9723571b59d6773b7126ccdc1402b81d3023fb0d7e0828443e33d91e41"

  url "https://files.kde.org/marble/downloads/MacOSX/Marble-#{version}.pkg"
  name "Marble"
  homepage "https://marble.kde.org/"

  deprecate! date: "2024-10-27", because: :unmaintained
  disable! date: "2025-10-27", because: :unmaintained

  pkg "Marble-#{version}.pkg"

  uninstall pkgutil: "org.kde.marbleV220.Marble.pkg"

  caveats do
    requires_rosetta
  end
end
