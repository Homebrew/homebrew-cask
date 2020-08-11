cask "banktivity" do
  version "7.5.2"
  sha256 "17b629f8af9d0d0e012595005380472f88a1fd95d83836c4cb46a7c6e5a20196"

  # iggsoft.com/ was verified as official when first introduced to the cask
  url "https://www.iggsoft.com/banktivity/Banktivity#{version.major}_Web.dmg"
  appcast "https://www.iggsoftware.com/product-versions.json"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  depends_on macos: ">= :high_sierra"

  app "Banktivity #{version.major}.app"
end
