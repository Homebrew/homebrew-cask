cask "microsoft-remote-desktop" do
  version "10.7.7"
  sha256 "f109329c038819c4bd75d667572154435aa96ce73e047e8a1bff0c9bc05f6973"

  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Remote_Desktop_#{version}_installer.pkg",
      verified: "officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
  name "Microsoft Remote Desktop"
  desc "Remote desktop client"
  homepage "https://docs.microsoft.com/en-us/windows-server/remote/remote-desktop-services/clients/remote-desktop-mac"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=868963"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "Microsoft_Remote_Desktop_#{version}_installer.pkg"

  uninstall pkgutil:   [
              "com.microsoft.rdc.macos",
              "com.microsoft.package.Microsoft_AutoUpdate.app",
            ],
            launchctl: [
              "com.microsoft.autoupdate.helper",
              "com.microsoft.update.agent",
            ],
            quit:      [
              "com.microsoft.autoupdate2",
              "com.microsoft.autoupdate.fba",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.rdc.macos",
    "~/Library/Containers/com.microsoft.rdc.macos",
    "~/Library/Group Containers/UBF8T346G9.com.microsoft.rdc",
  ]
end
