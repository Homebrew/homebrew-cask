cask "aside" do
  version "1.0.728.1"
  sha256 "cf85129b65175e19e15e6918c8b0a053a6220cf12c6a0c0121cc3abfc1ce9cef"

  url "https://releases.aside.com/dev-updater/Aside-#{version}.dmg"
  name "Aside"
  desc "Web browser with built-in AI assistant"
  homepage "https://aside.com/"

  livecheck do
    url "https://ptqgesmtzwdmeiknncqc.supabase.co/functions/v1/omaha/version_info.json"
    strategy :json do |json|
      json.dig("platforms", "mac", "version")
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Aside.app"

  uninstall launchctl: [
              "at.studio.AsideBrowser.UpdaterPrivilegedHelper",
              "at.studio.AsideKeystone.agent",
              "at.studio.AsideKeystone.xpcservice",
              "at.studio.AsideUpdater.wake",
            ],
            quit:      "at.studio.AsideBrowser",
            delete:    [
              "/Library/LaunchDaemons/at.studio.AsideBrowser.UpdaterPrivilegedHelper.plist",
              "/Library/PrivilegedHelperTools/at.studio.AsideBrowser.UpdaterPrivilegedHelper",
            ]

  zap launchctl: [
        "at.studio.AsideKeystone.agent",
        "at.studio.AsideKeystone.daemon",
      ],
      trash:     [
        "/Library/Aside/Aside Brand.plist",
        "/Library/Aside/AsideSoftwareUpdate",
        "~/.aside",
        "~/Library/Application Support/Aside",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/at.studio.AsideBrowser.sfl*",
        "~/Library/Aside",
        "~/Library/Caches/Aside",
        "~/Library/Caches/at.studio.AsideBrowser",
        "~/Library/Caches/at.studio.AsideKeystone",
        "~/Library/Caches/at.studio.AsideKeystone.Agent",
        "~/Library/HTTPStorages/at.studio.AsideBrowser",
        "~/Library/HTTPStorages/at.studio.AsideBrowser.binarycookies",
        "~/Library/LaunchAgents/at.studio.AsideKeystone.agent.plist",
        "~/Library/LaunchAgents/at.studio.AsideKeystone.xpcservice.plist",
        "~/Library/LaunchAgents/at.studio.AsideUpdater.wake.plist",
        "~/Library/Preferences/at.studio.AsideBrowser.plist",
        "~/Library/Preferences/at.studio.AsideKeystone.Agent.plist",
        "~/Library/Saved Application State/at.studio.AsideBrowser.savedState",
        "~/Library/WebKit/at.studio.AsideBrowser",
      ],
      rmdir:     "/Library/Aside"
end
