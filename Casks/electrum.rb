cask "electrum" do
  version "4.1.1"
  sha256 "6375fd6f4b859bb9e8bc40cfb2a0f97bfd45a9b69ffe6617de57a5bcd88e9800"

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
