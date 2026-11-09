cask "keyboop" do
  version "0.4.10"
  sha256 "fd200194ae9d2614da74fac08df70fd321807c4dd69e7fd478a23b813ec624b6"

  url "https://keyboop.com/Keyboop-#{version}.dmg"
  name "Keyboop"
  desc "Keyboard layout switcher with local voice dictation"
  homepage "https://keyboop.com/"

  livecheck do
    url "https://keyboop.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Keyboop.app"

  uninstall quit: "ru.keyboop.app"

  zap trash: [
    "~/Library/Application Support/Keyboop",
    "~/Library/Caches/ru.keyboop.app",
    "~/Library/Caches/ru.keyboop.app.sparkle",
    "~/Library/HTTPStorages/ru.keyboop.app",
    "~/Library/Logs/Keyboop.log",
    "~/Library/Preferences/ru.keyboop.app.plist",
  ]
end
