cask "lm-studio" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.24,1"
  sha256 arm:          "ece7e3681bc5eb2cf5ad1e8ab0e19a04dbb108459e704983601eeef9b5a7172b",
         arm64_linux:  "708908d1510d19ec965514bdf09e6fc688efa076ec166a323c1305535b2939a2",
         x86_64_linux: "17cb8ac6374f9182fc127efae20680265e3c4c17d96eadf147eb5fe6111a9353"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :monterey

    app "LM Studio.app"

    uninstall quit: [
      "ai.elementlabs.lmstudio",
      "ai.elementlabs.lmstudio.helper",
    ]

    zap trash: [
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
