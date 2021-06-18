cask "poedit" do
  version "2.4.3,6086"
  sha256 "54c31fb6d8edc537927cc09b049c257ad1e0b7d9245cecfa2dd006cfe2795f9d"

  url "https://download.poedit.net/Poedit-#{version.before_comma}.zip"
  name "Poedit"
  desc "Translation editor"
  homepage "https://poedit.net/"

  livecheck do
    url "https://poedit.net/updates_v#{version.major}/osx/appcast"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Poedit.app"
end
