cask "pagico" do
  version "9.5.20200824"
  sha256 "89abc9867833815b1e0216d300e7ca63d754a2caeac767d1eb967037fc612e92"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
