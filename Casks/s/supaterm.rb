cask "supaterm" do
  version "26.1.0"
  sha256 "963ded405eb3c789ba7f44632c8ba722e59bbba847e098d0d43b6c71ebb57d14"

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
