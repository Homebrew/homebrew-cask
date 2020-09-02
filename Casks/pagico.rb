cask "pagico" do
  version "9.5.20200902"
  sha256 "200acecd3b7f8c4599f67e9dab549b9c6f2fa9cefb1c956c9831f2df6e18a430"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
