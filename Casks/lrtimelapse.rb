cask "lrtimelapse" do
  version "6.5.0"
  sha256 "4036765f9cec53fa06d5ffaf812ca296d6ad5d5591d1b6249ffeef90287079c0"

  url "https://lrtimelapse.com/files/lrtimelapse-#{version.major}-mac-universal/?version=#{version}"
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
