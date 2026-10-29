cask "lm-studio" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.27,1"
  sha256 arm:          "c505e3520265f005c2c066feaa97cda9d80e104f3d2cc8cf1e815749ebd8c5a9",
         arm64_linux:  "79a38f557cf57dc47145fe77d01b6337b74cfa8fcd045f50bafb6cdeb44cc401",
         x86_64_linux: "ba8943dfdaebdf037753906c81db99a6152cafefaa212a2ea327aeae1770a3df"

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
