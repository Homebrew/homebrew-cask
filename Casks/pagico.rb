cask "pagico" do
  version "9.6.20201109"
  sha256 "0ffd6b943d894e3eb528e6d39ab67f65a4e63d1981ea5a5a61de08bdeaa2b696"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
