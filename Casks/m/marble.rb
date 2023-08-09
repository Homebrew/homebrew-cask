cask "marble" do
  version "2.2.0"
  sha256 "51397a9723571b59d6773b7126ccdc1402b81d3023fb0d7e0828443e33d91e41"

  url "https://files.kde.org/marble/downloads/MacOSX/Marble-#{version}.pkg"
  name "Marble"
  homepage "https://marble.kde.org/"

  livecheck do
    url "https://marble.kde.org/install.php"
    regex(%r{href=.*?/Marble-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "Marble-#{version}.pkg"

  uninstall pkgutil: "org.kde.marbleV220.Marble.pkg"
end
