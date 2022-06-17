cask "privileges" do
  version "1.5.3"
  sha256 "d8d269b8721e0844821c0a0dc6e428ecca6f53403e9993caed55c80bfb7fb52e"

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
