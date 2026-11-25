cask "dimble" do
  version "0.4.0"
  sha256 "ff1c5654534d32e627e738e22a3447e461e071d453ac50e1dc5d34929f5d7c87"

  url "https://github.com/fif7y/dimble/releases/download/v#{version}/Dimble-#{version}.dmg"
  name "Dimble"
  desc "Menu bar manager"
  homepage "https://dimble.fif7y.com/"

  livecheck do
    url "https://fif7y.github.io/updates/pliss/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "Dimble.app"

  zap trash: [
    "~/Library/Caches/app.fif7y.Pelmet",
    "~/Library/HTTPStorages/app.fif7y.Pelmet",
    "~/Library/Logs/Dimble",
    "~/Library/Preferences/app.fif7y.Pelmet.items.alwaysHidden.plist",
    "~/Library/Preferences/app.fif7y.Pelmet.items.hidden.plist",
    "~/Library/Preferences/app.fif7y.Pelmet.plist",
    "~/Library/WebKit/app.fif7y.Pelmet",
  ]
end
