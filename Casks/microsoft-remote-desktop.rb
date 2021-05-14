cask "microsoft-remote-desktop" do
  version "10.6.5"
  sha256 "c7652cece4a8cc31ded18bfac0bd38a5aa8145e883279f644838af5a178abcf2"

  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Remote_Desktop_#{version}_installer.pkg",
      verified: "officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
  name "Microsoft Remote Desktop"
  desc "Remote desktop client"
  homepage "https://docs.microsoft.com/en-us/windows-server/remote/remote-desktop-services/clients/remote-desktop-mac"

  livecheck do
    url "https://docs.microsoft.com/en-us/windows-server/remote/remote-desktop-services/clients/mac-whatsnew"
    strategy :page_match
    regex(/Updates\s*for\s*version\s*(\d+(?:\.\d+)*)/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "Microsoft_Remote_Desktop_#{version}_installer.pkg"

  uninstall pkgutil:   [
    "com.microsoft.rdc.macos",
  ],
            launchctl: [
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
