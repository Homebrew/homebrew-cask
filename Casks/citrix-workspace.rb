cask "citrix-workspace" do
  version "22.03.0.27,2203"
  sha256 :no_check

  url "https://downloadplugins.citrix.com/Mac/CitrixWorkspaceApp.dmg"
  name "Citrix Workspace"
  desc "Managed desktop virtualization solution"
  homepage "https://www.citrix.com/"

  livecheck do
    url "https://www.citrix.com/downloads/workspace-app/mac/workspace-app-for-mac-latest.html"
    strategy :page_match do |page|
      match = page.match(/Version:\s(\d+(?:\.\d+)+)\s\((\d+(?:\.\d+)*)\)/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :catalina"

  pkg "Install Citrix Workspace.pkg"

  uninstall launchctl: [
    "com.citrix.AuthManager_Mac",
    "com.citrix.ctxusbd",
    "com.citrix.ctxworkspaceupdater",
    "com.citrix.ReceiverHelper",
    "com.citrix.ServiceRecords",
  ],
            quit:      [
              "Citrix.ServiceRecords",
              "com.citrix.receiver.nomas",
              "com.citrix.ReceiverHelper",
            ],
            pkgutil:   "com.citrix.ICAClient"

  zap trash: [
    "~/Library/Application Support/com.citrix.CitrixReceiverLauncher",
    "~/Library/Application Support/com.citrix.HdxRtcEngine",
    "~/Library/Application Support/com.citrix.receiver.helper",
    "~/Library/Application Support/com.citrix.receiver.icaviewer.mac",
    "~/Library/Application Support/com.citrix.receiver.nomas",
    "~/Library/Application Support/com.citrix.ReceiverUpdater",
    "~/Library/Logs/Citrix Workspace",
    "~/Library/Preferences/com.citrix.AuthManager.plist",
    "~/Library/Preferences/com.citrix.CitrixReceiverLauncher.plist",
    "~/Library/Preferences/com.citrix.HdxRtcEngine.plist",
    "~/Library/Preferences/com.citrix.receiver.helper.plist",
    "~/Library/Preferences/com.citrix.receiver.icaviewer.mac.plist",
    "~/Library/Preferences/com.citrix.receiver.nomas.plist",
    "~/Library/Preferences/com.citrix.ReceiverFTU.AccountRecords.plist",
    "~/Library/Preferences/com.citrix.ReceiverUpdater.plist",
  ]
end
