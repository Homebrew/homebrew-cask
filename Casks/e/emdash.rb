cask "emdash" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "1.2.12"
  sha256 arm:          "0a71f31708099533d3a18e81cf008af2a33b004472834248322e7bd1427e2817",
         intel:        "8b0d55d6781a9fb8d351c8d2f51c95e9fddd43e2bdcf8d304c9a547f6315dc49",
         arm64_linux:  "5820c1a504a3477c1122b894a7c955f940e9f069330e5bc6ba1ea5ad39dbf38b",
         x86_64_linux: "7e0e3976f647199de20451ce97911dc9c63fdf2aaea715d0026ff7b134e359a6"

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
