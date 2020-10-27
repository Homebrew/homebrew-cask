cask "lrtimelapse" do
  version "5.5.4"
  sha256 "b8c929dcda19a623e0726382bd62e25f38b2ac16b5c6d96c8893dd26412f7038"

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
