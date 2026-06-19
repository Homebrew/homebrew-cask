cask "intune-company-portal" do
  version "5.2604.2"
  sha256 "7f990faf3ce5f9f5641f796a25c1f43d7f69aaefd5b569503c772d159f75a91e"

  url "https://res.public.onecdn.static.microsoft/mro1cdnstorage/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/CompanyPortal_#{version}-Upgrade.pkg",
      verified: "res.public.onecdn.static.microsoft/mro1cdnstorage/C1297A47-86C4-4C1F-97FA-950631F94777/"
  name "Company Portal"
  desc "App to manage access to corporate apps, data, and resources"
  homepage "https://docs.microsoft.com/en-us/mem/intune/user-help/enroll-your-device-in-intune-macos-cp"

  livecheck do
    url "https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409IMCP01.xml"
    regex(/^CompanyPortal[._-]v?(\d+(?:\.+\d+)+)[._-]Upgrade\.pkg$/i)
    strategy :xml do |xml, regex|
      filename = xml.elements["//key[text()='Payload']"]&.next_element&.text
      match = filename.strip.match(regex) if filename
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on macos: :big_sur

  pkg "CompanyPortal_#{version}-Upgrade.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_autoupdate_updater.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall launchctl: [
              "*.com.microsoft.entrabroker.EntraIdentityBrokerXPC.Mach",
              "com.microsoft.entraidentitybrokerxpc",
              "com.microsoft.update.agent",
            ],
            quit:      "com.microsoft.autoupdate2",
            pkgutil:   [
              "com.microsoft.CompanyPortal",
              "com.microsoft.CompanyPortalMac",
            ],
            delete:    "/Applications/Company Portal.app"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.CompanyPortalMac.ssoextension",
    "~/Library/Application Support/com.microsoft.CompanyPortalMac",
    "~/Library/Caches/com.microsoft.CompanyPortalMac",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.CompanyPortalMac",
    "~/Library/Caches/CompanyPortalCache",
    "~/Library/Containers/com.microsoft.CompanyPortalMac.ssoextension",
    "~/Library/HTTPStorages/com.microsoft.CompanyPortalMac",
    "~/Library/HTTPStorages/com.microsoft.CompanyPortalMac.binarycookies",
    "~/Library/Logs/Company Portal/*",
    "~/Library/Preferences/com.microsoft.CompanyPortalMac.plist",
    "~/Library/Preferences/group.com.microsoft.CompanyPortalMac.plist",
    "~/Library/Saved Application State/com.microsoft.CompanyPortalMac.savedState",
    "~/Library/WebKit/com.microsoft.CompanyPortalMac",
  ]
end
