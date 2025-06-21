cask "privileges" do
  version "2.3.0"
  sha256 "4d9e52989baddd378d54ebbdd35f6f63697655f55a5c0d463a800f77c7f219af"

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
