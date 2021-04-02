cask "electrum" do
  version "4.1.0"
  sha256 "4726b51de17fae54e39f50a4ddd33eae76e4be552d33c84b4903f17592e8eacf"

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name "Electrum"
  desc "Bitcoin thin client"
  homepage "https://electrum.org/"

  livecheck do
    url "https://github.com/spesmilo/electrum"
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Electrum.app"

  zap trash: [
    "~/.electrum",
    "~/Library/Preferences/Electrum.plist",
    "~/Library/Preferences/org.org.pythonmac.unspecified.Electrum.plist",
    "~/Library/Saved Application State/Electrum.savedState",
  ]
end
