cask "pagico" do
  version "9.5.20200904"
  sha256 "fb6aa3e3e4e38b69a372533b7b59cc3f7610d136190a1083dd359b7bbee7eed0"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
