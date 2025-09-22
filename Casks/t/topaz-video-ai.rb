cask "topaz-video-ai" do
  version "7.1.3"
  sha256 "1f2e97ee89a53e04649e7c8d70596a63aee87a4448db5ab673beab72ff96cd86"

  url "https://downloads.topazlabs.com/deploy/TopazVideoAI/#{version}/TopazVideoAI-#{version}.dmg"
  name "Topaz Video AI"
  desc "Video upscaler and quality enhancer"
  homepage "https://www.topazlabs.com/topaz-video-ai"

  livecheck do
    url "https://topazlabs.com/d/tvai/latest/mac/full"
    strategy :header_match
  end

  auto_updates true

  app "Topaz Video AI.app"

  uninstall pkgutil: [
              "com.topazlabs.aeplugin",
              "com.topazlabs.ofxplugin",
              "com.topazlabs.VAIPackage",
            ],
            delete:  [
              "/Applications/Adobe After Effects 2020/Plug-ins/Topaz Video AI Frame Interpolation.plugin",
              "/Applications/Adobe After Effects 2020/Plug-ins/Topaz Video AI.plugin",
              "/Applications/Adobe After Effects 2021/Plug-ins/Topaz Video AI Frame Interpolation.plugin",
              "/Applications/Adobe After Effects 2021/Plug-ins/Topaz Video AI.plugin",
              "/Applications/Adobe After Effects 2022/Plug-ins/Topaz Video AI Frame Interpolation.plugin",
              "/Applications/Adobe After Effects 2022/Plug-ins/Topaz Video AI.plugin",
              "/Applications/Adobe After Effects 2023/Plug-ins/Topaz Video AI Frame Interpolation.plugin",
              "/Applications/Adobe After Effects 2023/Plug-ins/Topaz Video AI.plugin",
              "/Applications/Adobe After Effects 2024/Plug-ins/Topaz Video AI Frame Interpolation.plugin",
              "/Applications/Adobe After Effects 2024/Plug-ins/Topaz Video AI.plugin",
              "/Applications/Adobe After Effects 2025/Plug-ins/Topaz Video AI Frame Interpolation.plugin",
              "/Applications/Adobe After Effects 2025/Plug-ins/Topaz Video AI.plugin",
              "/Library/OFX/Plugins/Topaz Video AI.ofx.bundle",
            ]

  zap trash: [
    "~/Library/Application Support/Topaz Labs LLC/Topaz Video AI",
    "~/Library/Caches/com.topazlabs.Topaz-Video-AI",
    "~/Library/Caches/Topaz Labs LLC/Topaz Video AI",
    "~/Library/Preferences/com.topazlabs.Topaz Video AI.plist",
    "~/Library/Preferences/com.topazlabs.Topaz-Video-AI.plist",
    "~/Library/Saved Application State/com.topazlabs.Topaz-Video-AI.savedState",
  ]
end
