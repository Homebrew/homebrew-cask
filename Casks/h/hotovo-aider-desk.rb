cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.30.0"
  sha256 arm:   "ff2d25a7babf05a1a1dfb633f52b0b822870af1accad7f99e7a573c7b18562a9",
         intel: "19cb29fd961a5c09de2205092d4d928227b726694375ef309c8b65455bc8d17b"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
