cask "electrum" do
  version "4.0.8"
  sha256 "0a84c5e36ad8050e413f6beb0264a41a16facdb8a1ba88cd721f29d448309e87"

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
