cask "opencode-desktop" do
  os macos: "mac", linux: "linux"
  url_arch = on_system_conditional macos: on_arch_conditional(arm: "arm64", intel: "x64"),
                                   linux: on_arch_conditional(arm: "arm64", intel: "x86_64")
  url_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.18.30"
  sha256 arm:          "d83737520b454681cde75b248a60595e57518c742861fd5ea07798ad3f52fb68",
         intel:        "ead3369f35d582cfb3e40df5062a65228642ad50ade9783894ad7d635f08c691",
         arm64_linux:  "ac2f84e250bd331665ffa80be33a19d68e00d8991b500ef9cfbce3f98f6d26c8",
         x86_64_linux: "4b675702283288644fa07e7b93ed5bcc47326cc156ba29f4172d022025ee3187"

  on_macos do
    depends_on macos: :monterey

    app "OpenCode.app"

    zap trash: [
      "~/Library/Application Support/ai.opencode.desktop",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.opencode.desktop.sfl*",
      "~/Library/Caches/ai.opencode.desktop",
      "~/Library/HTTPStorages/ai.opencode.desktop",
      "~/Library/Logs/ai.opencode.desktop",
      "~/Library/Preferences/ai.opencode.desktop.plist",
      "~/Library/Saved Application State/ai.opencode.desktop.savedState",
      "~/Library/WebKit/ai.opencode.desktop",
    ]
  end
  on_linux do
    app_image "opencode-desktop-linux-#{url_arch}.AppImage", target: "OpenCode.AppImage"

    zap trash: [
      "~/.cache/OpenCode",
      "~/.config/OpenCode",
      "~/.local/share/ai.opencode.desktop",
    ]
  end

  url "https://github.com/anomalyco/opencode/releases/download/v#{version}/opencode-desktop-#{os}-#{url_arch}.#{url_ext}"
  name "OpenCode"
  desc "AI coding agent desktop client"
  homepage "https://opencode.ai/"

  livecheck do
    url "https://github.com/anomalyco/opencode/releases/latest/download/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
end
