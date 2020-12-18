cask "lrtimelapse" do
  version "5.5.6"
  sha256 "8c7431e9f4b217989dad4869577caf6b031abae027831410a575b3a6747b6b23"

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
