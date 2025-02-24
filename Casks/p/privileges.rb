cask "privileges" do
  version "2.2.0"
  sha256 "3d02e9249124a0c727ec867595b8221da0464ebf2369091587519e67c3ee6cc7"

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
            ],
            pkgutil:   "corp.sap.privileges.pkg"

  zap trash: [
    "~/Library/Application Scripts/corp.sap.privileges",
    "~/Library/Containers/corp.sap.privileges",
    "~/Library/Group Containers/*.corp.sap.privileges",
  ]
end
