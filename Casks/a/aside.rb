cask "aside" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1022.1"
  sha256 arm:   "0ecd3f192482dcf76c72b7488d01fc33dd989fc766e86e0c832b9742bbbc650e",
         intel: "fd9bbe633da1898e360f261a815cb70148be8da40166843cfc658830b0b83fa5"

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
