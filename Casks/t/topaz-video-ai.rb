cask "topaz-video-ai" do
  version "7.1.5"
  sha256 "4e3721d5605c36cbf872573471a5bbc5eb63860404c939f889251311135090ba"

  url "https://downloads.topazlabs.com/deploy/TopazVideoAI/#{version}/TopazVideoAI-#{version}.pkg"
  name "Topaz Video AI"
  desc "Video upscaler and quality enhancer"
  homepage "https://docs.topazlabs.com/other-apps/legacy"

  deprecate! date: "2025-09-16", because: :discontinued, replacement_cask: "topaz-video"

  auto_updates true

  pkg "TopazVideoAI-#{version}.pkg"

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
