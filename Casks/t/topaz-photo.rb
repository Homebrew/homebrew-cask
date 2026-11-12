cask "topaz-photo" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional intel: "/intel"

  version "1.8.1"
  sha256 arm:   "c272183d67ecbe217b116b80dbbbbdcd5198e6f8ae7fe23264e1c4c96cec4053",
         intel: "3e4cbfe1837ca12366d565c42abead6c099b7a2620753ec67d5cec3ca0e90062"

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
  depends_on macos: :monterey

  pkg "TopazPhoto-#{version}-#{arch}.pkg"

  uninstall pkgutil: "com.topazlabs.TopazPhoto",
            delete:  [
              "/Applications/Topaz Photo.app",
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
