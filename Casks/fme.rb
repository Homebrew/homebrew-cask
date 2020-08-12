cask "fme" do
  version "2020.1.1-b20608"
  sha256 "099e7834f6e8b5724d532fdfd3e9aef9d5495842fe83dbd248d6862af90b6f6d"

  url "https://downloads.safe.com/fme/#{version.major}/fme-desktop-#{version}-macosx.dmg"
  appcast "https://www.safe.com/support/downloads/",
          must_contain: version.major_minor
  name "FME Desktop"
  homepage "https://www.safe.com/"

  installer script: {
    executable: "FME Desktop Installer.app/Contents/MacOS/applet",
    sudo:       true,
  }

  uninstall quit:   [
    "com.safe.fmeworkbench",
    "com.safe.datainspector",
    "com.safe.fmequicktranslator",
    "com.safe.fmehelp",
  ],
            delete: [
              "/Applications/FME #{version.major_minor}",
              "/Library/FME/#{version.major_minor}",
            ]

  zap trash: [
    "~/Library/Application Support/FME",
    "~/Library/Application Support/FME Desktop Help",
    "~/Library/Application Support/FME Help",
    "~/Library/Application Support/FME Workbench",
  ]
end
