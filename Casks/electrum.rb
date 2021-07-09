cask "electrum" do
  version "4.1.4"
  sha256 "2b9d06a881bc76cc521c60e8bb5ec25cd522b222b1afdbc57849f51ff682999e"

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
