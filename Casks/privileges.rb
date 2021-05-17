cask "privileges" do
  version "1.5.2"
  sha256 "092c784e6e3c1b00287eac5d755e8cbfdf8fc213c00dac0e61094ca83bb11c22"

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
