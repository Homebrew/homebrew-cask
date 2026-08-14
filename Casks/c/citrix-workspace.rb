cask "citrix-workspace" do
  version "26.07.0.76"
  sha256 "cdbfd5e4f1e9b38ce88f71907908eebcc53dc643b336117db43e0450201be826"

  url "https://downloadplugins.citrix.com/ReceiverUpdates/Prod/Receiver/Mac/CitrixWorkspaceAppUniversal#{version}.pkg"
  name "Citrix Workspace"
  desc "Managed desktop virtualization solution"
  homepage "https://docs.citrix.com/en-us/citrix-workspace"

  livecheck do
    url "https://downloadplugins.citrix.com/ReceiverUpdates/Prod/catalog_macos2.xml"
    strategy :xml do |xml|
      xml.get_elements("//Installers[@name='WorkspaceApp']/Installer/Version")
         .map { |item| item.text&.strip }
    end
  end

  auto_updates true
  depends_on :macos

  pkg "CitrixWorkspaceAppUniversal#{version}.pkg"

  uninstall_preflight_steps do
    remove "/Library/Citrix Workspace/CitrixWorkspaceInstaller/Applications/Citrix Workspace.app",
           symlink_target_contains: "/Applications/Citrix Workspace.app", sudo: true
  end

  uninstall launchctl: [
              "com.citrix.AuthManager_Mac",
              "com.citrix.ctxusbd",
              "com.citrix.CtxWorkspaceHelperDaemon",
              "com.citrix.ctxworkspaceupdater",
              "com.citrix.devicetrust.launchagent",
              "com.citrix.PluginBroker",
              "com.citrix.ReceiverHelper",
              "com.citrix.ReceiverUninstallHelper",
              "com.citrix.ReceiverUpdaterHelper",
              "com.citrix.safariadapter",
              "com.citrix.ServiceRecords",
              "com.citrix.UninstallMonitor",
            ],
            quit:      [
              "Citrix.ServiceRecords",
              "com.citrix.CitrixReceiverLauncher",
              "com.citrix.receiver.nomas",
              "com.citrix.ReceiverHelper",
            ],
            pkgutil:   [
              "com.citrix.common",
              "com.citrix.devicetrust.client",
              "com.citrix.devicetrust.client.ica",
              "com.citrix.enterprisebrowserinstaller",
              "com.citrix.ICAClient",
              "com.citrix.ICAClientcwa",
              "com.citrix.ICAClienthdx",
              "com.citrix.receiver.bcr",
            ],
            delete:    [
              "/Applications/Citrix Workspace.app",
              "/Library/Citrix Workspace",
            ]

  zap trash: [
    "/Library/Logs/Citrix Workspace",
    "~/Library/Application Support/Citrix Receiver",
    "~/Library/Application Support/Citrix Workspace",
    "~/Library/Application Support/Citrix",
    "~/Library/Application Support/com.citrix.CitrixReceiverLauncher",
    "~/Library/Application Support/com.citrix.HdxRtcEngine",
    "~/Library/Application Support/com.citrix.receiver*",
    "~/Library/Application Support/com.citrix.ReceiverUpdater",
    "~/Library/Caches/com.citrix.receiver*",
    "~/Library/HTTPStorages/com.citrix.CitrixReceiverLauncher",
    "~/Library/HTTPStorages/com.citrix.receiver*",
    "~/Library/Logs/Citrix Workspace",
    "~/Library/Preferences/com.citrix.AuthManager.plist",
    "~/Library/Preferences/com.citrix.CitrixReceiverLauncher.plist",
    "~/Library/Preferences/com.citrix.HdxRtcEngine.plist",
    "~/Library/Preferences/com.citrix.receiver*.plist",
    "~/Library/Preferences/com.citrix.Receiver*.plist",
    "~/Library/Saved Application State/com.citrix.receiver.nomas.savedState",
    "~/Library/WebKit/com.citrix.receiver.nomas",
  ]
end
