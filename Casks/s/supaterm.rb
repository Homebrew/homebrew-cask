cask "supaterm" do
  version "26.0.0"
  sha256 "b12c1a0dc87c560b3502b47aeb91b462952ddfb660c0aeec9bc971bcf06e2628"

  url "https://supaterm.com/download/v#{version}/supaterm.dmg"
  name "Supaterm"
  desc "Terminal emulator with built-in agent automation"
  homepage "https://supaterm.com/"

  livecheck do
    url "https://supaterm.com/download/latest/appcast.xml"
    strategy :sparkle do |items|
      items.map do |item|
        next unless item.channel.nil?

        item.short_version
      end
    end
  end

  auto_updates true
  depends_on macos: :tahoe

  app "supaterm.app"

  zap trash: [
    "~/Library/Application Support/app.supabit.supaterm",
    "~/Library/Caches/app.supabit.supaterm",
    "~/Library/Caches/SentryCrash/supaterm",
    "~/Library/HTTPStorages/app.supabit.supaterm",
    "~/Library/Preferences/app.supabit.supaterm.plist",
  ]
end
