cask "privileges" do
  version "2.1.0"
  sha256 "3c1fffdbb8208cf0f37fb07e4a99d16f2bbb9b956d19019bc3ed379475f80dd9"

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
