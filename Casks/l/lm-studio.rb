cask "lm-studio" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional intel: "x86", arm: "arm64"
  os macos: "darwin", linux: "linux"

  version "0.4.20,1"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://installers.lmstudio.ai/#{os}/#{arch}/#{version.tr(",", "-")}/LM-Studio-#{version.tr(",", "-")}-#{arch}#{url_end}"
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

  on_macos do
    sha256 "f8552c3c3d9a089ccb719d05d123f77eaa7c3fa377723bc81ffd459ed1be8222"

    depends_on macos: :monterey
    depends_on arch: :arm64

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
    sha256 arm64_linux:  "a1765f4659761cb5dd079385739dd4fcb2ca514eb6f9225ec35eca9d9eca3baf",
           x86_64_linux: "6e1c9e7973ae892eef934d706612c920c04b24165861108d5883258801c64aed"

    app_image "LM-Studio-#{version.tr(",", "-")}-#{arch}.AppImage", target: "LM Studio.AppImage"
  end
end
