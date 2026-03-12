cask "topaz-photo" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional intel: "/intel"

  version "1.3.3"
  sha256 arm:   "e2eed31cd695203f4a376b3bb07fbfa0db23acc4b37134d692e2ead99652f99a",
         intel: "d6baa7dce44fb81be1bd8773bb9ef2bf9771eabdfae9c33e864a4ed927a524c4"

  url "https://downloads.topazlabs.com/deploy/TopazPhoto/#{version}/TopazPhoto-#{version}-#{arch}.pkg"
  name "Topaz Photo"
  desc "AI image enhancer"
  homepage "https://www.topazlabs.com/topaz-photo"

  livecheck do
    url "https://topazlabs.com/d/photostudio/latest/mac#{livecheck_arch}/full"
    regex(/TopazPhoto[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "TopazPhoto-#{version}-#{arch}.pkg"

  uninstall pkgutil: "com.topazlabs.TopazPhoto",
            delete:  [
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazPhoto.plugin",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazPhotoApply.plugin",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazPhotoAutomate.plugin",
              "/Library/Application Support/Adobe/Plug-Ins/CC/TopazPhotoGather.plugin",
              "~/Library/Application Support/Adobe/Lightroom/External Editor Presets/TopazGigapixel.lrtemplate",
              "~/Library/Application Support/Adobe/Lightroom/Modules/Topaz Photo.lrplugin",
              "~/Library/Application Support/Affinity Photo 2/Plugins/TopazGigapixel.plugin",
              "~/Library/Application Support/Capture One/Plug-ins/TopazGigapixel.coplugin",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.topazlabs.TopazPhotoplugin",
    "~/Library/Application Support/Topaz Labs LLC/Topaz Photo",
    "~/Library/Caches/Topaz Labs LLC/Topaz Photo",
    "~/Library/Containers/com.topazlabs.TopazPhotoplugin",
    "~/Library/Preferences/com.topazlabs.Topaz Photo.plist",
    "~/Library/Preferences/com.topazlabs.TopazPhoto.plist",
  ]
end
