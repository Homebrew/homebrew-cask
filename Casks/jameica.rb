cask "jameica" do
  version "2.10.2"
  sha256 "3b9f7676ab5dd2956350b734c5faf7a39eab8d9dc75ac5a95bc71ac8091c6ed5"

  url "https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64-#{version}.zip"
  name "Jameica"
  desc "Application-platform written in Java containing a SWT-UI"
  homepage "https://www.willuhn.de/products/jameica/"

  livecheck do
    url "https://www.willuhn.de/products/jameica/download.php"
    regex(%r{href=.*?/jameica[._-]macos64[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  app "jameica.app"
end
