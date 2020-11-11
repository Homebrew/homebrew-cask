cask "lrtimelapse" do
  version "5.5.5"
  sha256 "a977bb4b21351c3bbe529248495217cc6fa12c6c020fb767461c64915c8f85e6"

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
