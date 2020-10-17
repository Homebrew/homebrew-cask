cask "electrum" do
  version "4.0.4"
  sha256 "873154B2E60649ACE0B70FE5321954595920BDB51BAC8BB483426466B0DD0D82"

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast "https://github.com/spesmilo/electrum/releases.atom"
  name "Electrum"
  desc "Bitcoin thin client"
  homepage "https://electrum.org/"

  app "Electrum.app"

  zap trash: [
    "~/.electrum",
    "~/Library/Preferences/Electrum.plist",
    "~/Library/Preferences/org.org.pythonmac.unspecified.Electrum.plist",
    "~/Library/Saved Application State/Electrum.savedState",
  ]
end
