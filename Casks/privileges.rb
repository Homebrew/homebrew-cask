cask "privileges" do
  version "1.5.3"
  sha256 "16f60a9a14c79c73dbeac6e817849e350f718e9aaf4a8d2e858de2b1f68f4bcd"

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
