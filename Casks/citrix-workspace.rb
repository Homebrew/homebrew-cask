cask "citrix-workspace" do
  version "23.07.0.64"
  sha256 "1246ab915ab42ca6bf5387c69700366bdb75eaf96eeb81e8b27705836169c850"

  url "https://downloadplugins.citrix.com/ReceiverUpdates/Prod/Receiver/Mac/CitrixWorkspaceAppUniversal#{version}.pkg"
  name "Citrix Workspace"
  desc "Managed desktop virtualization solution"
  homepage "https://www.citrix.com/"

  livecheck do
    url "https://downloadplugins.citrix.com/ReceiverUpdates/Prod/catalog_macos2.xml"
    strategy :xml do |xml|
      xml.get_elements("//Installers[@name='WorkspaceApp']/Installer/Version").map(&:text)
    end
  end

  depends_on macos: ">= :catalina"

  pkg "CitrixWorkspaceAppUniversal#{version}.pkg"

  uninstall launchctl: [
              "com.citrix.AuthManager_Mac",
              "com.citrix.ctxusbd",
              "com.citrix.ctxworkspaceupdater",
              "com.citrix.ReceiverHelper",
              "com.citrix.safariadapter",
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
