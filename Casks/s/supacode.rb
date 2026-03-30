cask "supacode" do
  version "0.7.6"
  sha256 "f327ab0412418be102b85f7720bdf081279d353b7acff89b2925dc9d3e4757c1"

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
