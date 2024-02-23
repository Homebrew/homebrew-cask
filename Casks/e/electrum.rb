cask "electrum" do
  version "4.5.3"
  sha256 "6c0e5a86d4f66a45c48022749ae812d7181950ecff2acbea831836c823bfc947"

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name "Electrum"
  desc "Bitcoin thin client"
  homepage "https://electrum.org/"

  livecheck do
    url "https://electrum.org/#download"
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
