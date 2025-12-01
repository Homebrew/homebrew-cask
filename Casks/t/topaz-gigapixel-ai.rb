cask "topaz-gigapixel-ai" do
  version "8.4.4"
  sha256 "9b3acfa9f98bf52fa494043c4f6e9176ce6385fce07273aa559cf9ff86492aed"

  url "https://downloads.topazlabs.com/deploy/TopazGigapixelAI/#{version}/TopazGigapixelAI-#{version}.pkg"
  name "Topaz Gigapixel AI"
  desc "AI image upscaler"
  homepage "https://docs.topazlabs.com/other-apps/legacy"

  deprecate! date: "2025-09-16", because: :discontinued, replacement_cask: "topaz-gigapixel"

  auto_updates true

  pkg "TopazGigapixelAI-#{version}.pkg"

  uninstall pkgutil: "com.topazlabs.TopazGigapixelAI",
            delete:  [
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazGigapixelAI.plugin",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazGigapixelAIApply.plugin",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazGigapixelAIAutomate.plugin",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazGigapixelAIGather.plugin",
              "~/Library/Application Support/Adobe/Lightroom/External Editor Presets/TopazGigapixelAI.lrtemplate",
              "~/Library/Application Support/Affinity Photo 2/Plugins/TopazGigapixelAI.plugin",
              "~/Library/Application Support/Capture One/Plug-ins/TopazGigapixelAI.coplugin",
              "~/Library/Application Support/Topaz Labs LLC/Topaz Gigapixel AI",
            ]

  zap trash: [
    "~/Library/Caches/Topaz Labs LLC/Topaz Gigapixel AI",
    "~/Library/Preferences/com.topaz-labs-llc.Topaz Gigapixel AI.plist",
    "~/Library/Preferences/com.topazlabs.Topaz Gigapixel AI.plist",
    "~/Library/Preferences/com.topazlabs.TopazGigapixelAI.plist",
    "~/Library/Saved Application State/com.topazlabs.TopazGigapixelAI.savedState",
  ]
end
