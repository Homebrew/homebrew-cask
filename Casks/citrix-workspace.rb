cask "citrix-workspace" do
  version :latest
  sha256 :no_check

  url "https://downloadplugins.citrix.com/Mac/CitrixWorkspaceApp.dmg"
  name "Citrix Workspace"
  desc "Managed desktop virtualization solution"
  homepage "https://www.citrix.com/"

  pkg "Install Citrix Workspace.pkg"

  uninstall launchctl: [
    "com.citrix.ctxworkspaceupdater",
    "com.citrix.ctxusbd",
    "com.citrix.ServiceRecords",
    "com.citrix.ReceiverHelper",
    "com.citrix.AuthManager_Mac",
  ],
            quit:      [
              "Citrix.ServiceRecords",
              "com.citrix.ReceiverHelper",
              "com.citrix.receiver.nomas",
            ],

            pkgutil:   "com.citrix.ICAClient"

  zap trash: [
    "~/Library/Application Support/com.citrix.CitrixReceiverLauncher",
    "~/Library/Application Support/com.citrix.ReceiverUpdater",
    "~/Library/Application Support/com.citrix.receiver.icaviewer.mac",
    "~/Library/Application Support/com.citrix.HdxRtcEngine",
    "~/Library/Application Support/com.citrix.receiver.helper",
    "~/Library/Application Support/com.citrix.receiver.nomas",
    "~/Library/Logs/Citrix Workspace",
    "~/Library/Preferences/com.citrix.AuthManager.plist",
    "~/Library/Preferences/com.citrix.HdxRtcEngine.plist",
    "~/Library/Preferences/com.citrix.ReceiverUpdater.plist",
    "~/Library/Preferences/com.citrix.receiver.icaviewer.mac.plist",
    "~/Library/Preferences/com.citrix.CitrixReceiverLauncher.plist",
    "~/Library/Preferences/com.citrix.ReceiverFTU.AccountRecords.plist",
    "~/Library/Preferences/com.citrix.receiver.helper.plist",
    "~/Library/Preferences/com.citrix.receiver.nomas.plist",
  ]
end
