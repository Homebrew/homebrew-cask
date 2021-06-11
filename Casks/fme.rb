cask "fme" do
  version "2021.0.3,21326"
  sha256 "d0488a6db9a8b0c97d57f5ab99a5ba399038fe56b291b2526f3c7808a38bb95c"

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
