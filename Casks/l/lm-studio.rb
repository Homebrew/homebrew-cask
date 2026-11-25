cask "lm-studio" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.29,2"
  sha256 arm:          "8120d709888370e86e46791b8445482e28615dab5f3e8972a9a22e0f90fcdb14",
         arm64_linux:  "6761d124e7b5446018c7608135f8f58a5462a1714c46ba1267e67828a33c0e94",
         x86_64_linux: "55c841359589e58d75e5e1a210b9006053db4c5cef8a721934b24ecc674f5fe2"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :monterey

    app "LM Studio.app"

    uninstall quit: [
      "ai.elementlabs.lmstudio",
      "ai.elementlabs.lmstudio.helper",
    ]

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.elementlabs.lmstudio.sfl*",
      "~/Library/Application Support/LM Studio",
      "~/Library/Caches/ai.elementlabs.lmstudio",
      "~/Library/Caches/ai.elementlabs.lmstudio.ShipIt",
      "~/Library/HTTPStorages/ai.elementlabs.lmstudio",
      "~/Library/Logs/LM Studio",
      "~/Library/Preferences/ai.elementlabs.lmstudio.plist",
      "~/Library/Saved Application State/ai.elementlabs.lmstudio.savedState",
    ]
  end
  on_linux do
    app_image "LM-Studio-#{version.tr(",", "-")}-#{arch}.AppImage", target: "LM Studio.AppImage"

    zap trash: [
      "~/.cache/lm-studio-updater",
      "~/.config/LM Studio",
      "~/.config/LM-Studio",
    ]
  end

  url "https://installers.lmstudio.ai/#{os}/#{arch}/#{version.tr(",", "-")}/LM-Studio-#{version.tr(",", "-")}-#{arch}.#{url_end}"
  name "LM Studio"
  desc "Discover, download, and run local LLMs"
  homepage "https://lmstudio.ai/"

  livecheck do
    url "https://versions-prod.lmstudio.ai/update/#{os}/#{livecheck_arch}/#{version.csv.first}"
    strategy :json do |json|
      version = json["version"]
      build = json["build"]
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
end
