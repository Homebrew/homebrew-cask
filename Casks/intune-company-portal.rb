cask "intune-company-portal" do
  version "2.11.201100"
  sha256 "ff2521eae026033e77791386e5bc215833b4e3f65e6399d70b8d8a0023d96a75"

  url "https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/CompanyPortal_#{version}-Installer.pkg"
  name "Company Portal"
  desc "App to manage access to corporate apps, data, and resources"
  homepage "https://docs.microsoft.com/en-us/mem/intune/user-help/enroll-your-device-in-intune-macos-cp"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=853070"
    strategy :header_match do |headers|
      headers["location"][%r{/CompanyPortal_(\d+(?:\.\d+)*)-Installer\.pkg}i, 1]
    end
  end

  auto_updates true
  depends_on cask: "microsoft-auto-update"
  depends_on macos: ">= :mojave"

  pkg "CompanyPortal_#{version}-Installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_autoupdate_updater.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil: [
    "com.microsoft.CompanyPortalMac",
    "com.microsoft.CompanyPortal",
  ],
            delete:  [
              "/Applications/Company Portal.app",
            ]
end
