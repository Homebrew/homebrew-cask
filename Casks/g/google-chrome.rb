cask "google-chrome" do
  version "152.0.7977.65"
  sha256 :no_check

  url "https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg"
  name "Google Chrome"
  desc "Web browser"
  homepage "https://www.google.com/chrome/"

  # The stable channel serves several releases at once and the highest version
  # is usually a staged rollout to a fraction of users, so we only work with
  # the release that has fully rolled out (`fraction=1`), as that's what the
  # download URL provides.
  livecheck do
    url "https://versionhistory.googleapis.com/v1/chrome/platforms/mac/channels/stable/versions/all/releases?filter=endtime%3Dnone,fraction%3D1"
    strategy :json do |json|
      json["releases"]&.map { |release| release["version"] }
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Google Chrome.app"

  zap launchctl: [
        "com.google.keystone.agent",
        "com.google.keystone.daemon",
      ],
      trash:     [
        "/Library/Caches/com.google.SoftwareUpdate.*",
        "/Library/Google/Google Chrome Brand.plist",
        "/Library/Google/GoogleSoftwareUpdate",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.app.*.sfl*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.sfl*",
        "~/Library/Application Support/Google/Chrome",
        "~/Library/Caches/com.google.Chrome",
        "~/Library/Caches/com.google.Chrome.helper.*",
        "~/Library/Caches/com.google.Keystone",
        "~/Library/Caches/com.google.Keystone.Agent",
        "~/Library/Caches/com.google.SoftwareUpdate",
        "~/Library/Caches/Google/Chrome",
        "~/Library/Google/Google Chrome Brand.plist",
        "~/Library/Google/GoogleSoftwareUpdate",
        "~/Library/LaunchAgents/com.google.keystone.agent.plist",
        "~/Library/LaunchAgents/com.google.keystone.xpcservice.plist",
        "~/Library/Logs/GoogleSoftwareUpdateAgent.log",
        "~/Library/Preferences/com.google.Chrome.plist",
        "~/Library/Preferences/com.google.Keystone.Agent.plist",
        "~/Library/Saved Application State/com.google.Chrome.app.*.savedState",
        "~/Library/Saved Application State/com.google.Chrome.savedState",
        "~/Library/WebKit/com.google.Chrome",
      ],
      rmdir:     [
        "/Library/Google",
        "~/Library/Application Support/Google",
        "~/Library/Caches/Google",
        "~/Library/Google",
      ]
end
