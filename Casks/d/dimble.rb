cask "dimble" do
  version "0.4.1"
  sha256 "af17fc46db768dc10c8ee577e2605706d7c8e6afd9d6727c1dbfdb5f7a7a9592"

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
