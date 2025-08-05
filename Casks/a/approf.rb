cask "approf" do
  version "14.1.3"
  sha256 "cc6317df3877668b94d88643ae57b974e30c713ff2593e4f8d7755c9f58f28c2"

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
