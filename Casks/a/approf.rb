cask "approf" do
  version "14.1.1"
  sha256 "d5840dfa9ec8da3b290d6e4887a031b7e5930eb2211b16de4dd3a844a45f9fca"

  url "https://github.com/moderato-app/approf/releases/download/v#{version}/approf-#{version}.app.zip"
  name "approf"
  desc "Native app for pprof"
  homepage "https://github.com/moderato-app/approf"

  livecheck do
    url :url
    strategy :github_latest
  end

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
