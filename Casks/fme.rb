cask "fme" do
  version "2021.0.0.1,21306"
  sha256 "745e2fb302c9d8d9f34b6589f564454ee0402dafef7f6d1d826f28b011bb721c"

  url "https://downloads.safe.com/fme/#{version.major}/fme-desktop-#{version.before_comma}-b#{version.after_comma}-macosx.dmg"
  name "FME Desktop"
  desc "Platform for integrating spatial data"
  homepage "https://www.safe.com/"

  livecheck do
    url "https://www.safe.com/api/downloads/"
    strategy :page_match do |page|
      match = page.match(%r{/fme-desktop-(\d+(?:\.\d+)*)-b(\d+)-macosx\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

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
