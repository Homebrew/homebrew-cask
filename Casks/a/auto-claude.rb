cask "auto-claude" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.7.6"

  on_macos do
    sha256 arm:   "c8469a7b83344aad7cb830a16fd01a91b8369ffebcb785196d136fa50045505e",
           intel: "c35f967d4ca74c6811cba25c25d2fb9866f8f6b99dc6e8e6769c9405c14ebe99"

    depends_on macos: :monterey

    app "Auto-Claude.app"

    zap trash: [
      "~/Library/Application Support/auto-claude-ui",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.autoclaude.ui.sfl*",
      "~/Library/Logs/auto-claude-ui",
      "~/Library/Preferences/com.autoclaude.ui.plist",
    ]
  end
  on_linux do
    sha256 "21832b15cb6420d56dc57ad2738a76a8ceee15342aac618bc1dc060cffb346e0"

    depends_on arch: :x86_64

    app_image "Auto-Claude-#{version}-linux-#{arch}.AppImage", target: "Auto-Claude.AppImage"
  end

  url "https://github.com/AndyMik90/Aperant/releases/download/v#{version}/Auto-Claude-#{version}-#{os}-#{arch}.#{url_end}"
  name "Auto Claude"
  desc "Autonomous multi-session AI coding"
  homepage "https://aperant.com/"
end
