cask "jameica" do
  version "2.10.3"
  sha256 "ad780572225c38dea186f59e9bbfd7f195f1424c21efa5ba723bb506a852a2cf"

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
