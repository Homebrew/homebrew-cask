cask "kugelblitz" do
  version "1.0.2"
  sha256 "9441df5f609af3dc0220bc538dd54db4e361acc2ddc759e4b05326abb8e85c63"

  url "https://apps.metaebene.me/dl/kugelblitz/#{version}/Kugelblitz-#{version}.dmg"
  name "Kugelblitz"
  desc "3D globe and atlas for exploring geodata"
  homepage "https://apps.metaebene.me/de/kugelblitz"

  livecheck do
    url "https://apps.metaebene.me/kugelblitz/releases.atom"
    regex(%r{<title>Kugelblitz\s+v?(\d+(?:\.\d+)+)</title>}i)
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
  ]
end
