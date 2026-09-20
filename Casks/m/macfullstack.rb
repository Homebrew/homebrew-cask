cask "macfullstack" do
  version "1.1.8"
  sha256 "c7c68343b6692510f81102c31b24df1b577ac563e5ebf9fd040462838e239857"

  url "https://github.com/max-benk/MacFullStack/releases/download/v#{version}/MacFullStack-#{version}-arm64.dmg"
  name "MacFullStack"
  desc "Local PHP and CMS development environment"
  homepage "https://macfullstack.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MacFullStack.app"
  binary "#{appdir}/MacFullStack.app/Contents/Resources/macstack"
  binary "#{appdir}/MacFullStack.app/Contents/Resources/macfullstack"

  uninstall launchctl: [
              "app.macstack.MacStack.backup",
              "app.macstack.MacStack.login",
              "app.macstack.MacStack.share",
            ],
            quit:      "app.macstack.MacStack"

  zap trash: [
    "~/Library/Application Support/MacFullStack",
    "~/Library/Application Support/MacStack",
    "~/Library/Caches/app.macstack.MacStack",
    "~/Library/HTTPStorages/app.macstack.MacStack",
    "~/Library/LaunchAgents/app.macstack.MacStack.backup.plist",
    "~/Library/LaunchAgents/app.macstack.MacStack.login.plist",
    "~/Library/LaunchAgents/app.macstack.MacStack.share.plist",
    "~/Library/Logs/MacFullStack",
    "~/Library/Preferences/app.macstack.MacStack.plist",
    "~/Library/Saved Application State/app.macstack.MacStack.savedState",
  ]
end
