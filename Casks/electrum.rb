cask "electrum" do
  version "4.1.5"
  sha256 "cbc98ceb3aad57e2d48ed7418d2952d0bd283749e0d27a0d3a37b959d31ac8d0"

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
