cask "lrtimelapse" do
  version "5.8.0"
  sha256 "951c9295f5879040e6b73f6faf9a47c7d1164ce80a24bb2e88b09a5c9446edf5"

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
