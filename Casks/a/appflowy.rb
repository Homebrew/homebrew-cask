cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.5"
  sha256 arm:   "930bbf266ef1fb0825a53bdfd765b509cd141a443ac49b437e8257ba8ed27d3a",
         intel: "e873e03c7d15a3f569b8a00001ceb7e759781a6a291600f4c9e30fac20f55d30"

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
