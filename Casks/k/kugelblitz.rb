cask "kugelblitz" do
  version "1.2"
  sha256 "48ef4be2635885a2266eca3d7a4792ed322299ed1b2a1f3b22c9ea0845535289"

  url "https://apps.metaebene.me/dl/kugelblitz/#{version}/Kugelblitz-#{version}.dmg"
  name "Kugelblitz"
  desc "3D globe and atlas for exploring geodata"
  homepage "https://apps.metaebene.me/en/kugelblitz"

  livecheck do
    url "https://apps.metaebene.me/kugelblitz/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "Kugelblitz.app"

  zap trash: [
    "~/Library/Application Scripts/me.metaebene.Kugelblitz.Preview",
    "~/Library/Application Scripts/me.metaebene.Kugelblitz.Share",
    "~/Library/Application Support/me.metaebene.Kugelblitz",
    "~/Library/Caches/me.metaebene.Kugelblitz",
    "~/Library/Containers/me.metaebene.Kugelblitz.Preview",
    "~/Library/Containers/me.metaebene.Kugelblitz.Share",
    "~/Library/HTTPStorages/me.metaebene.Kugelblitz",
    "~/Library/Preferences/me.metaebene.Kugelblitz.plist",
    "~/Library/WebKit/me.metaebene.Kugelblitz",
  ]
end
