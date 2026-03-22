cask "supacode" do
  version "0.6.9"
  sha256 "28541c262529e5335c7881824bab986c274b2f23c9aff3990f743f9c60726150"

  url "https://supacode.sh/download/v#{version}/supacode.dmg"
  name "supacode"
  desc "Native terminal coding agents command center"
  homepage "https://supacode.sh/"

  # The appcast items can't be reliably ordered by `pubDate` and there are
  # unstable versions in the "tip" channel, so we do simple version comparison
  # (ignoring `pubDate`) and only work with the items in the default channel.
  livecheck do
    url "https://supacode.sh/download/latest/appcast.xml"
    strategy :sparkle do |items|
      items.map do |item|
        next unless item.channel.nil?

        item.short_version
      end
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
