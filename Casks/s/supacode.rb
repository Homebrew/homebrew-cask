cask "supacode" do
  version "0.5.8"
  sha256 "5bcaa00b0b78771d4d0715dc2a3eb459e299a187da3c566aa8044fe11f4ac032"

  url "https://supacode.sh/download/v#{version}/supacode.dmg"
  name "supacode"
  desc "Native terminal coding agents command center"
  homepage "https://supacode.sh/"

  livecheck do
    url "https://supacode.sh/download/latest/appcast.xml"
    strategy :sparkle
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
