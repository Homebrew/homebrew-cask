cask "lrtimelapse" do
  version "5.5.0"
  sha256 "d01f583fc899b2a80575050a59503a655d3745210858d658ef9fcaa1bbac6794"

  url "https://lrtimelapse.com/files/lrtimelapse-#{version.major}-mac/"
  appcast "https://lrtimelapse.com/download/"
  name "LRTimelapse"
  homepage "https://lrtimelapse.com/"

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
