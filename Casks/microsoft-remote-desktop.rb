cask "microsoft-remote-desktop" do
  version "10.5.1"
  sha256 "2b99e8980b8c57a4ab60bc2cde9b671afcdaec42e3148dc8b0df04e68b8c806f"

  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Remote_Desktop_#{version}_installer.pkg",
      verified: "officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
  name "Microsoft Remote Desktop"
  desc "Remote desktop client"
  homepage "https://docs.microsoft.com/en-us/windows-server/remote/remote-desktop-services/clients/remote-desktop-mac"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "Microsoft_Remote_Desktop_#{version}_installer.pkg"

  uninstall pkgutil: [
    "com.microsoft.rdc.macos",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.rdc.macos",
    "~/Library/Containers/com.microsoft.rdc.macos",
    "~/Library/Group Containers/UBF8T346G9.com.microsoft.rdc",
  ]
end
