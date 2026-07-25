cask "topaz-gigapixel" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional intel: "/intel"

  version "1.3.2"
  sha256 arm:   "3014a4ef7d8eb1388c9cd6fd019055ccb92d72254b011f790410d5bcdf4c2172",
         intel: "23d2c99ba07c396b52a57d42306ff517de859a307fbf853f177d3a0f4d91ff5e"

  url "https://downloads.topazlabs.com/deploy/TopazGigapixel/#{version}/TopazGigapixel-#{version}-#{arch}.pkg"
  name "Topaz Gigapixel"
  desc "AI image upscaler"
  homepage "https://www.topazlabs.com/topaz-gigapixel"

  livecheck do
    url "https://topazlabs.com/d/gigapixelstudio/latest/mac#{livecheck_arch}/full"
    regex(/TopazGigapixel[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :monterey

  pkg "TopazGigapixel-#{version}-#{arch}.pkg"

  uninstall pkgutil: "com.topazlabs.TopazGigapixel",
            delete:  [
              "/Applications/Topaz Gigapixel.app",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazGigapixel.plugin",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazGigapixelApply.plugin",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazGigapixelAutomate.plugin",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazGigapixelGather.plugin",
              "~/Library/Application Support/Adobe/Lightroom/External Editor Presets/TopazGigapixel.lrtemplate",
              "~/Library/Application Support/Affinity Photo 2/Plugins/TopazGigapixel.plugin",
              "~/Library/Application Support/Capture One/Plug-ins/TopazGigapixel.coplugin",
            ]

  zap trash: [
    "~/Library/Application Support/Topaz Labs LLC/Topaz Gigapixel",
    "~/Library/Cache/Topaz Labs LLC/Topaz Gigapixel",
    "~/Library/Preferences/com.topazlabs.Topaz Gigapixel.plist",
    "~/Library/Preferences/com.topazlabs.TopazGigapixel.plist",
  ]
end
