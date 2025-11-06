cask "browseros" do
  arch arm: "arm64", intel: "x64"

  version "0.29.0"
  sha256 arm:   "c4015f1b584f5a939d54079060243a5a4a0efcba87ac2769ebecd9fb80ca1aaa",
         intel: "2bdaa7ab9f7f93068bf8e8f0de6cc1fba9ace02a0f127e9180c700bc7550c815"

  url "https://github.com/browseros-ai/BrowserOS/releases/download/#{version}/BrowserOS_v#{version}_#{arch}.dmg",
      verified: "github.com/browseros-ai/BrowserOS/"
  name "BrowserOS"
  desc "Open-source agentic browser"
  homepage "https://www.browseros.com/"

  depends_on macos: ">= :big_sur"

  app "BrowserOS.app"

  zap trash: [
    "~/Library/Application Support/BrowserOS",
    "~/Library/Caches/BrowserOS",
    "~/Library/Preferences/com.browseros.BrowserOS.plist",
  ]
end
