cask "electrum" do
  version "4.7.2"
  sha256 "3370b3fea652c4bc707e5ec913ae42a03602083ff05482c3eae0d2a00bf3b842"

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name "Electrum"
  desc "Bitcoin thin client"
  homepage "https://electrum.org/"

  livecheck do
    url :homepage
    regex(/href=.*?electrum[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

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
