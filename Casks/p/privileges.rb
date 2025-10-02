cask "privileges" do
  version "2.4.2"
  sha256 "83e0d84ead1fdf35a20fbb1395aebcac3dc1430605c93f55731ad7e6d145f408"

  url "https://github.com/SAP/macOS-enterprise-privileges/releases/download/#{version}/Privileges_#{version}.pkg"
  name "Privileges"
  desc "Admin rights switcher"
  homepage "https://github.com/SAP/macOS-enterprise-privileges"

  depends_on macos: ">= :big_sur"

  pkg "Privileges_#{version}.pkg"
  binary "#{appdir}/Privileges.app/Contents/MacOS/PrivilegesCLI"

  uninstall launchctl: [
              "corp.sap.privileges.agent",
              "corp.sap.privileges.daemon",
              "corp.sap.privileges.watcher",
            ],
            pkgutil:   "corp.sap.privileges.pkg"

  zap trash: [
    "~/Library/Application Scripts/corp.sap.privileges",
    "~/Library/Containers/corp.sap.privileges",
    "~/Library/Group Containers/*.corp.sap.privileges",
  ]
end
