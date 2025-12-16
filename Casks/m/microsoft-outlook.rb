cask "microsoft-outlook" do
  on_ventura :or_older do
    on_catalina :or_older do
      version "16.66.22102801"
      sha256 "bddede85956713be21fdb5ab72be07ecefd05552752e8e60c649e6a15fd0a2c2"
    end
    on_big_sur do
      version "16.77.23091703"
      sha256 "becfe797d1c799a4366385f449e42f7377bd3d6de5d4db20e37bd36ba2f24ef5"
    end
    on_monterey do
      version "16.89.24091630"
      sha256 "24731ffca0b78c02f2544b145b4a103bd11b724fef0dc938bf5899e156495a72"
    end
    on_ventura do
      version "16.101.25100321"
      sha256 "db4ce5854bbcb60284041f7a04e2f37e317cff578857486af78069b3935c5e86"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "16.104.25121423"
    sha256 "54ac61b2c182ad0f703fe854c3e29e875fac1eab344a438fb938d45143b8d116"

    livecheck do
      url "https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409OPIM2019.xml"
      strategy :xml do |xml|
        xml.get_elements("//key[text()='Update Version']").map { |item| item.next_element&.text&.strip }
      end
    end
  end

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Outlook_#{version}_Installer.pkg"
  name "Microsoft Outlook"
  desc "Email client"
  homepage "https://www.microsoft.com/en-us/microsoft-365/outlook/outlook-for-business"

  auto_updates true
  conflicts_with cask: [
    "microsoft-office",
    "microsoft-office-businesspro",
  ]

  pkg "Microsoft_Outlook_#{version}_Installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall launchctl: "com.microsoft.office.licensingV2.helper",
            quit:      "com.microsoft.autoupdate2",
            pkgutil:   [
              "com.microsoft.package.Microsoft_Outlook.app",
              "com.microsoft.pkg.licensing",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Outlook",
    "~/Library/Containers/com.microsoft.Outlook",
  ]
end
