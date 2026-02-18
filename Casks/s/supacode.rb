cask "supacode" do
  version "0.6.1"
  sha256 "20335a533baf7d2559b3ff720fb94bcfe858fd48e5b98411969b035818cf19dc"

  url "https://supacode.sh/download/v#{version}/supacode.dmg"
  name "supacode"
  desc "Native terminal coding agents command center"
  homepage "https://supacode.sh/"

  livecheck do
    url "https://supacode.sh/download/latest/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "supacode.app"

  zap trash: [
    "~/Library/Application Support/app.supabit.supacode",
    "~/Library/Caches/app.supabit.supacode",
    "~/Library/HTTPStorages/app.supabit.supacode",
    "~/Library/HTTPStorages/app.supabit.supacode.binarycookies",
    "~/Library/Preferences/app.supabit.supacode.plist",
  ]
end
