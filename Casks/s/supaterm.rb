cask "supaterm" do
  version "1.2.2"
  sha256 "558a1ce1029af7ddeff5c8b1c0ca12ba8a25702f627b95b0dd49806f0c68d7ec"

  url "https://github.com/supabitapp/supaterm/releases/download/v#{version}/supaterm.dmg",
      verified: "github.com/supabitapp/supaterm/"
  name "Supaterm"
  desc "Terminal for the coding agents age"
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
  depends_on arch: :arm64

  app "supaterm.app"
  binary "#{appdir}/supaterm.app/Contents/Resources/bin/sp"

  zap trash: [
    "~/Library/Application Support/app.supabit.supaterm",
    "~/Library/Caches/app.supabit.supaterm",
    "~/Library/HTTPStorages/app.supabit.supaterm",
    "~/Library/HTTPStorages/app.supabit.supaterm.binarycookies",
    "~/Library/Preferences/app.supabit.supaterm.plist",
  ]
end
