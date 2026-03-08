cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.3"
  sha256 arm:   "03d4f5c1b393f1853ecf7bb5506aaab737c17b2fa48b6cfcbfbb96efeb26d5fc",
         intel: "49e144df0770ce9861d417e07fd8adcca52e8b312411dddc0d3acf38a562d441"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "AppFlowy-#{arch}.app", target: "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
