cask "poedit" do
  version "2.4.2,6064"
  sha256 "3c88650a6a2ac43eb0c34d0eb1abacdee109b5bae9aa5313d88276291e16afad"

  url "https://download.poedit.net/Poedit-#{version.before_comma}.zip"
  name "Poedit"
  homepage "https://poedit.net/"

  livecheck do
    url "https://poedit.net/updates_v#{version.major}/osx/appcast"
    strategy :sparkle
  end

  auto_updates true

  app "Poedit.app"
end
