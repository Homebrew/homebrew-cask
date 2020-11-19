cask "electrum" do
  version "4.0.5"
  sha256 "efa41a21c0aa4fc788e44b6524013933bbdee986048570c98291ea23459ae5a4"

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
