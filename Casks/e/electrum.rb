cask "electrum" do
  version "4.8.2"
  sha256 "d0715488995ea671a3ac3f382a0ebf9aefb0c1430871940b35718a56a01d5311"

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name "Electrum"
  desc "Bitcoin thin client"
  homepage "https://electrum.org/"

  livecheck do
    url :homepage
    regex(/href=.*?electrum[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "Electrum.app"

  zap trash: [
    "~/.electrum",
    "~/Library/Preferences/Electrum.plist",
    "~/Library/Preferences/org.org.pythonmac.unspecified.Electrum.plist",
    "~/Library/Saved Application State/Electrum.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
