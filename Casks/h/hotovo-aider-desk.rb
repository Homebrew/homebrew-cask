cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.49.0"
  sha256 arm:   "b1e2bd00029313bbe80ed16b3dc76d7f96e06f4903268cef527d6ed11247adaa",
         intel: "3764ab1626ae9ee57026b026067ec056dab992fa9b1455bfa0f95440dfb022d5"

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
