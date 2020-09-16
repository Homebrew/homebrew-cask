cask "banktivity" do
  version "7.5.3"
  sha256 "fec905834853295ec1223894e0109d4e8edd0c7d682be4439e33633e4c526e1d"

  # iggsoft.com/ was verified as official when first introduced to the cask
  url "https://www.iggsoft.com/banktivity/Banktivity#{version.major}_Web.dmg"
  appcast "https://www.iggsoftware.com/product-versions.json"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  depends_on macos: ">= :high_sierra"

  app "Banktivity #{version.major}.app"
end
