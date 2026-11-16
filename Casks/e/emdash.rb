cask "emdash" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "1.2.11"
  sha256 arm:          "6f36052874fef79a34c802b9c0f34a3fe7f379747f5c89093d6f7b1cd1916b25",
         intel:        "a9b8685d885df0bb49b6298917a7572fc4f9080f7eaa7ec563fa56671017c44d",
         arm64_linux:  "9029901c982e344cf08b4d75546cfd10de1cc7c68fb41041ca94298350ace700",
         x86_64_linux: "8d2187e93fbd5537aa8a5c4bde2d2e70de71c542d0e5ebc8daa4b52690e098a8"

  on_macos do
    depends_on macos: :monterey

    app "Emdash.app"

    uninstall quit: "com.emdash.stable"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.stable.sfl*",
      "~/Library/Application Support/Emdash",
      "~/Library/Logs/emdash",
      "~/Library/Preferences/com.emdash.plist",
      "~/Library/Preferences/com.emdash.stable.plist",
      "~/Library/Saved Application State/com.emdash.savedState",
    ]
  end
  on_linux do
    app_image "emdash-#{arch}.AppImage", target: "Emdash.AppImage"

    zap trash: "~/.config/emdash"
  end

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.#{os}"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
