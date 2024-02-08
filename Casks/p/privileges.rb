cask "privileges" do
  version "1.5.4"
  sha256 "6f16af136a928a9e0c233ef7d36db4458588224e676b079ede1b626c8ddba346"

  url "https://github.com/SAP/macOS-enterprise-privileges/releases/download/#{version}/Privileges.zip"
  name "Privileges"
  desc "Admin rights switcher"
  homepage "https://github.com/SAP/macOS-enterprise-privileges"

  depends_on macos: ">= :sierra"

  app "Privileges.app"
  binary "#{appdir}/Privileges.app/Contents/Resources/PrivilegesCLI", target: "privileges-cli"

  uninstall delete: [
    "/Library/LaunchDaemons/corp.sap.privileges.helper.plist",
    "/Library/PrivilegedHelperTools/corp.sap.privileges.helper",
  ]

  zap trash: [
    "~/Library/Application Scripts/corp.sap.privileges",
    "~/Library/Containers/corp.sap.privileges",
  ]
end
