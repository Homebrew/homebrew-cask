cask "jameica" do
  version "2.10.4"
  sha256 "3507e02b003228dc392fed671c530846887a43433c1b29136f2cf60a20d1c66a"

  url "https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64-#{version}.zip"
  name "Jameica"
  desc "Application-platform written in Java containing a SWT-UI"
  homepage "https://www.willuhn.de/products/jameica/"

  livecheck do
    url "https://www.willuhn.de/products/jameica/download.php"
    regex(%r{href=.*?/jameica[._-]macos64[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  app "jameica.app"

  zap trash: "~/.jameica.properties"
end
