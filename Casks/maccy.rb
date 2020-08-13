cask "maccy" do
  version "0.14.1"
  sha256 "d9512f737b5ac14620cafca286adc95f7036d5fc9c4fab07da563e42bc0b4002"

  # github.com/p0deje/Maccy/ was verified as official when first introduced to the cask
  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast "https://github.com/p0deje/Maccy/releases.atom"
  name "Maccy"
  homepage "https://maccy.app/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Maccy.app"

  uninstall quit: "org.p0deje.Maccy"

  zap login_item: "Maccy",
      trash:      "~/Library/Preferences/org.p0deje.Maccy.plist"
end
