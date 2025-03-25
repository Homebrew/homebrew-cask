cask "3dconnexion" do
  on_mojave :or_older do
    version "10-6-7,r3287,36E24890-6B5F-443a-8A9F-1851F9ADB985"
    sha256 "4752bd4297733743fb512121116b536ffe260152f97134398d028b9936bc26f9"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "10-8-7,r3836,81855983"
    sha256 "167b6b68adc64b21ae5579bc84b5aa990a6fb61e20857bae323674cbf0e85515"

    livecheck do
      url "https://3dconnexion.com/us/drivers/"
      regex(%r{href=.*?_([\dA-F]+(?:-[\dA-F]+)*)/3DxWareMac_v(\d+(?:-\d+)*)_(r\d+)\.dmg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[1]},#{match[2]},#{match[0]}" }
      end
    end
  end

  url "https://download.3dconnexion.com/drivers/mac/#{version.csv.first}_#{version.csv.third}/3DxWareMac_v#{version.csv.first}_#{version.csv.second}.dmg"
  name "3Dconnexion"
  desc "3DxWare Driver"
  homepage "https://3dconnexion.com/"

  depends_on macos: ">= :el_capitan"

  pkg "Install 3Dconnexion software.pkg"

  uninstall launchctl: [
              "com.3dconnexion.helper",
              "com.3dconnexion.nlserverIPalias",
            ],
            quit:      [
              "com.3dconnexion.*",
              "com.3Dconnexion.3DxUpdater",
            ],
            script:    [
              { executable: "#{appdir}/3Dconnexion/Uninstall 3Dconnexion Driver.app/Contents/Resources/rm3dcx",
                sudo:       true },
            ],
            pkgutil:   "com.3dconnexion.*",
            delete:    [
              "/Applications/3Dconnexion",
              "/Library/Application Support/3Dconnexion",
              "/Library/Extensions/3Dconnexion.kext",
              "/Library/Frameworks/3DconnexionClient.framework",
              "/Library/LaunchDaemons/com.3dconnexion.nlserverIPalias.plist",
              "/Library/PreferencePanes/3Dconnexion.prefPane",
            ]

  zap trash: [
    "~/Library/Logs/3Dconnexion",
    "~/Library/Preferences/3Dconnexion",
    "~/Library/Preferences/com.3dconnexion.*.plist",
    "~/Library/Saved Application State/com.3dconnexion.*.savedState",
  ]

  caveats do
    reboot
  end
end
