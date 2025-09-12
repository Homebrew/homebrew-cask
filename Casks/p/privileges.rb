cask "privileges" do
  version "2.4.1"
  sha256 "212165b911be25c4b837a5e0394d9631289343450cc3c028609fdd7dac5f302b"

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
