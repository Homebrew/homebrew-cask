cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.60.0"
  sha256 arm:   "86afa87fccb217b10a06d603917fdcd5f9660545903bb85a16e8e066c00e0a36",
         intel: "72e8f6c79ebcfa6649dc83863b1375489a75e7ae5fc68f8df3b3816cf6684ca6"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
