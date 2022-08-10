cask "lrtimelapse" do
  version "6.1.0"
  sha256 "f6fe49ef5dea7129ad632f4dc70130ea1a7ee561a72e64f524efb661201fb163"

  url "https://lrtimelapse.com/files/lrtimelapse-#{version.major}-mac/?version=#{version.dots_to_hyphens}"
  name "LRTimelapse"
  desc "Time lapse editing, keyframing, grading and rendering"
  homepage "https://lrtimelapse.com/"

  livecheck do
    url "https://lrtimelapse.com/download/"
    regex(/LRTimelapse[._-]?v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  pkg "LRTimelapse #{version} Installer.pkg"

  uninstall script:  {
              executable: "/usr/local/LRTimelapse/uninstall.sh",
              input:      "\n",
              sudo:       true,
            },
            pkgutil: [
              "com.lrtimelapse.LRAddons",
              "com.lrtimelapse.LRTimelapse#{version.major}",
              "com.lrttimelapse.LRTTools",
            ]

  caveats do
    files_in_usr_local
  end
end
