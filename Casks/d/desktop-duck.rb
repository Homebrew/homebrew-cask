cask "desktop-duck" do
  version "1.2"
  sha256 "07e18ae7cbc15deba1472a3a337f17c0540f2bdb87c2a26057c49eba714e87ce"

  url "https://github.com/ShiyangZheng/DesktopDuck/releases/download/v#{version}/DesktopDuck-v#{version}.app.zip"
  name "DesktopDuck"
  desc "AI-powered desktop pet with group chat, journal, and character generation"
  homepage "https://github.com/ShiyangZheng/DesktopDuck"

  depends_on macos: ">= :monterey"

  app "DesktopDuck.app"

  zap trash: [
    "~/.workbuddy/duck-config.json",
    "~/.workbuddy/duck-prefs.json",
    "~/.workbuddy/pet-thoughts.json",
    "~/.workbuddy/pet-response.json",
    "~/.workbuddy/pet-inbox.txt",
    "~/.workbuddy/journal.json",
    "~/.workbuddy/chat-history.json",
    "~/.workbuddy/duck-custom",
    "~/.workbuddy/duck-sprites",
  ]
end
