cask "jameica" do
  version "2.10.1"
  sha256 "2ca8b1ae37bdeb656287aaccd97ddd7dcdf65da6cf145f20a527ba2b0fc4ee1f"

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
