cask "approf" do
  version "14.1.2"
  sha256 "82d0850f1cd7d2e7429650ef99f4ea9bd42dff23f3fed0ea7ec221d0dde3d52e"

  url "https://github.com/moderato-app/approf/releases/download/v#{version}/approf-#{version}.app.zip"
  name "approf"
  desc "Native app for pprof"
  homepage "https://github.com/moderato-app/approf"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "approf.app"

  uninstall quit: "the.future.app.approf.approf"

  zap trash: [
    "~/Library/Application Support/the.future.app.approf.approf.plist",
    "~/Library/Caches/the.future.app.approf.approf",
    "~/Library/Cookies/the.future.app.approf.approf.binarycookies",
    "~/Library/HTTPStorages/the.future.app.approf.approf",
    "~/Library/LaunchAgents/the.future.app.approf.approf.plist",
    "~/Library/Preferences/the.future.app.approf.approf.plist",
  ]
end
