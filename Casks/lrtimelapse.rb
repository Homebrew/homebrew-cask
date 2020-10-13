cask "lrtimelapse" do
  version "5.5.3"
  sha256 "2ac9df186d953f99c8c3eeafb7ee96d53bece751d48dcdff8450dcf1ae24e230"

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
