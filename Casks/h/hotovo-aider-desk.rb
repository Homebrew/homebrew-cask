cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.85.0"
  sha256 arm:   "a6c2a332486fc86008301e5a8788fb204c68c0216f583e27d74bcbefed7c0c8d",
         intel: "cf5f2207d0a7612807ffcf0b0417cd8bc3fc71f6df50e08358c52f753487be74"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "aider-desk.app"

  zap trash: [
    "~/.aider-desk",
    "~/Library/Application Support/aider-desk",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hotovo.aider-desk.sfl*",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
