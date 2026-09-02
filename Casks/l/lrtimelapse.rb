cask "lrtimelapse" do
  version "7.5.4"
  sha256 "d0ecfc71d267c4ac427b576977f364f879ad1fd9a5fc31b8b943cb397527e3e2"

  url "https://lrtimelapse.com/files/lrtimelapse-#{version.major}-mac/?version=#{version}"
  name "LRTimelapse"
  desc "Time lapse editing, keyframing, grading and rendering"
  homepage "https://lrtimelapse.com/"

  livecheck do
    url "https://lrtimelapse.com/download/"
    regex(/LRTimelapse[._-]?v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on :macos

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
