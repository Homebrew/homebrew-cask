cask "fme" do
  version "2020.2,b20787"
  sha256 "9a7f31ea829203938903c8175e526976370dbb8d253944ceb77ba9e34dbcd8aa"

  url "https://downloads.safe.com/fme/#{version.major}/fme-desktop-#{version.before_comma}-#{version.after_comma}-macosx.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?encoding=utf8&url=https://www.safe.com/api/downloads/&splitter_1=beta&index_1=0",
          must_contain: "#{version.before_comma}-#{version.after_comma}"
  name "FME Desktop"
  desc "Platform for integrating spatial data"
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
