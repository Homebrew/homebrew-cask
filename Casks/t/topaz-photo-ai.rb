cask "topaz-photo-ai" do
  version "4.0.4"
  sha256 "b69dc080940a53b7b3e1b7965d955c6f2c83b5b512a2082fae0ab1e27da828d0"

  url "https://downloads.topazlabs.com/deploy/TopazPhotoAI/#{version}/TopazPhotoAI-#{version}.pkg"
  name "Topaz Photo AI"
  desc "AI image enhancer"
  homepage "https://docs.topazlabs.com/other-apps/legacy"

  deprecate! date: "2025-09-16", because: :discontinued, replacement_cask: "topaz-photo"

  auto_updates true

  pkg "TopazPhotoAI-#{version}.pkg"

  uninstall pkgutil: "com.topazlabs.TopazPhotoAI",
            delete:  [
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazPhotoAI.plugin",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazPhotoAIApply.plugin",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazPhotoAIAutomate.plugin",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazPhotoAIGather.plugin",
              "~/Library/Application Support/Adobe/Lightroom/External Editor Presets/TopazPhotoAI.lrtemplate",
              "~/Library/Application Support/Adobe/Lightroom/Modules/Topaz Photo AI.lrplugin",
              "~/Library/Application Support/Affinity Photo 2/Plugins/TopazPhotoAI.plugin",
              "~/Library/Application Support/Capture One/Plug-ins/TopazPhotoAI.coplugin",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.topazlabs.TopazPhotoAIplugin",
    "~/Library/Application Support/Topaz Labs LLC/Topaz Photo AI",
    "~/Library/Caches/com.topazlabs.TopazPhotoAI",
    "~/Library/Caches/Topaz Labs LLC/Topaz Photo AI",
    "~/Library/Containers/com.topazlabs.TopazPhotoAIplugin",
    "~/Library/Preferences/com.topaz-labs-llc.Topaz Photo AI.plist",
    "~/Library/Preferences/com.topazlabs.Topaz Photo AI.plist",
    "~/Library/Preferences/com.topazlabs.TopazPhotoAI.plist",
    "~/Library/Saved Application State/com.topazlabs.TopazPhotoAI.savedState",
  ]
end
