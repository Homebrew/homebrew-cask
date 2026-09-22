cask "lm-studio" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.25,1"
  sha256 arm:          "8bab857c3d2900e14ab46435f0d1471de068f165e761bb9c177093e8a25e1774",
         arm64_linux:  "e3ef32a37656e7e4e5cdadf52e72fa929d5f26eb6007be1666c76e4fdba8e084",
         x86_64_linux: "eca467446c833824697e8befab300fe5269fdf984e3ee4385fcbad8502f07c53"

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
