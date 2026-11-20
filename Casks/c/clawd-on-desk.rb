cask "clawd-on-desk" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "1.6.0"
  sha256 arm:          "b93ff98e6ef78af9346c42c47ecc3bef96a81725c133930a76c4db0ee94dc34e",
         intel:        "063bb81673356ff1bd92585e9ccca9b19676e1542918d714450692a083f6e8e3",
         x86_64_linux: "d09d6efae228f3b6b57ecd0911d5c50db65875f072c9aa098280033f16290ff7"

  on_macos do
    depends_on macos: :monterey

    app "Clawd on Desk.app"

    zap trash: [
      "~/Library/Application Support/clawd-on-desk",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.clawd.on-desk.sfl*",
      "~/Library/Caches/com.clawd.on-desk",
      "~/Library/HTTPStorages/com.clawd.on-desk",
      "~/Library/Logs/clawd-on-desk",
      "~/Library/Preferences/com.clawd.on-desk.plist",
      "~/Library/Saved Application State/com.clawd.on-desk.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Clawd-on-Desk-#{version}-#{arch}.AppImage", target: "Clawd on Desk.AppImage"

    zap trash: [
      "~/.clawd",
      "~/.config/clawd-on-desk",
    ]
  end

  url "https://github.com/rullerzhou-afk/clawd-on-desk/releases/download/v#{version}/Clawd-on-Desk-#{version}-#{arch}.#{os}"
  name "Clawd on Desk"
  desc "Desktop pet that reacts to AI coding agents"
  homepage "https://github.com/rullerzhou-afk/clawd-on-desk"

  livecheck do
    url :url
    strategy :github_latest
  end
end
