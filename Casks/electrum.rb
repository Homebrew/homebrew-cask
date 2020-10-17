cask "electrum" do
  version "4.0.4"
  sha256 "0c1ab00fd8af191b20507a97bf5ab5168a4ea2f09c9285f307b0c851eea9069e"

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
