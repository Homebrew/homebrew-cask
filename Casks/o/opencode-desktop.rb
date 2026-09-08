cask "opencode-desktop" do
  os macos: "mac", linux: "linux"
  url_arch = on_system_conditional macos: on_arch_conditional(arm: "arm64", intel: "x64"),
                                   linux: on_arch_conditional(arm: "arm64", intel: "x86_64")
  url_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.18.29"
  sha256 arm:          "9dac3c31246da436ddb75bb734a6de88d0d0b0ab24d9b07cc3c8d233a7a2849c",
         intel:        "f124da34450f22ca21c59885691020682a18fc2c944e282325fb636912384f28",
         arm64_linux:  "12f0525903543a6337e27823a9d8f58efddae66073f1746b01e84d2699f20713",
         x86_64_linux: "a344cc56c0e0cd72ddfdf9635270e5c7810ffb2def453656559c0cc3b2362be4"

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
