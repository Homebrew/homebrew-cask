cask "aside" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1116.2"
  sha256 arm:   "2c1f9a8d67e81f84d6aac803d6fdc08e62b78dd9f0c2bc8bd9e83181a8f1cd71",
         intel: "c880a1e51e223f31f0da36fc1505002d84f41b2e53406151627c2df0208c9dd3"

  url "https://releases.aside.com/dev-updater/Aside-#{version}-#{arch}.dmg"
  name "Aside"
  desc "Web browser with built-in AI assistant"
  homepage "https://aside.com/"

  livecheck do
    url "https://ptqgesmtzwdmeiknncqc.supabase.co/functions/v1/omaha/version_info.json"
    strategy :json do |json|
      json.dig("platforms", "mac", "architectures", arch, "version")
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Aside.app"

  uninstall launchctl: [
              "application.at.studio.AsideBrowser.daemon.*",
              "at.studio.AsideBrowser.UpdaterPrivilegedHelper",
              "at.studio.AsideKeystone.agent",
              "at.studio.asidekeystone.agent",
              "at.studio.AsideKeystone.xpcservice",
              "at.studio.asidekeystone.xpcservice",
              "at.studio.AsideUpdater.wake",
            ],
            quit:      "at.studio.AsideBrowser",
            signal:    [
              ["TERM", "at.studio.AsideBrowser"],
              ["TERM", "at.studio.AsideUpdater"],
            ],
            delete:    [
              "/Library/LaunchDaemons/at.studio.AsideBrowser.UpdaterPrivilegedHelper.plist",
              "/Library/PrivilegedHelperTools/at.studio.AsideBrowser.UpdaterPrivilegedHelper",
              "~/Library/LaunchAgents/at.studio.asidekeystone.agent.plist",
              "~/Library/LaunchAgents/at.studio.asidekeystone.xpcservice.plist",
              "~/Library/LaunchAgents/at.studio.AsideUpdater.wake.plist",
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
        "~/Library/Caches/aside-memory",
        "~/Library/Caches/at.studio.AsideBrowser",
        "~/Library/Caches/at.studio.AsideKeystone",
        "~/Library/Caches/at.studio.AsideKeystone.Agent",
        "~/Library/Caches/at.studio.AsideUpdater",
        "~/Library/HTTPStorages/at.studio.AsideBrowser",
        "~/Library/HTTPStorages/at.studio.AsideBrowser.binarycookies",
        "~/Library/HTTPStorages/at.studio.AsideUpdater",
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
