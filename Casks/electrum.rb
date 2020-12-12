cask "electrum" do
  version "4.0.7"
  sha256 "01d5a7117de45e67dbfd1dcea686c24ade793387318ef8da91a7dc8fabdb37ad"

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast "https://github.com/spesmilo/electrum/releases.atom"
  name "Electrum"
  desc "Bitcoin thin client"
  homepage "https://electrum.org/"

  depends_on macos: ">= :high_sierra"

  app "Electrum.app"

  zap trash: [
    "~/.electrum",
    "~/Library/Preferences/Electrum.plist",
    "~/Library/Preferences/org.org.pythonmac.unspecified.Electrum.plist",
    "~/Library/Saved Application State/Electrum.savedState",
  ]
end
