cask "pagico" do
  version "9.6.20201125"
  sha256 "b56b88b0ab47fb018e6a4d7cb4a80ca8d753ea835819d24449caade1b867f21a"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
