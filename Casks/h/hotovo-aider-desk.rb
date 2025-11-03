cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.38.0"
  sha256 arm:   "5cfc101eee8855cbb7f5465e2ccab87a285de7e69314017b6946d98542f972a6",
         intel: "b809ababfd6a308e4e25c1af4dd013a7396648d7b9af2ec1632f907ccc30857b"

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
