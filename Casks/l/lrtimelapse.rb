cask "lrtimelapse" do
  version "7.2.0"
  sha256 "146abd5ac4e1e44bc3e264b66f915236c0f29656b3b40cc9ae7462ec2d7a2584"

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
