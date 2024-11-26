cask "lrtimelapse" do
  version "7.2.1"
  sha256 "d5e8415d324ee5926f9c64c1c29cb785292320b8875788709c98b0f33169b57e"

  url "https://lrtimelapse.com/files/lrtimelapse-#{version.major}-mac/?version=#{version}"
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

  zap trash: "~/Library/Application Support/LRTimelapse"

  caveats do
    files_in_usr_local
  end
end
