cask "electrum" do
  version "4.3.0"
  sha256 "e6d56b907cd59c8a946189d1dd35281ba0074ee3a928a311c54a0a155971c4bd"

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name "Electrum"
  desc "Bitcoin thin client"
  homepage "https://electrum.org/"

  livecheck do
    url "https://electrum.org/panel-download.html"
    regex(/href=.*?electrum[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
