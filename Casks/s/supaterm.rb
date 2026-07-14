cask "supaterm" do
  version "26.3.1"
  sha256 "d0a917de4b4fe0e9edbb48ab1a11a04e3e3f96aa2e237c4b9de1d19a4f88b1e9"

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
