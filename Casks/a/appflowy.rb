cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.6"
  sha256 arm:   "6b305d53e2add4a3ae07a5db586059dbaf3a0d7b9f2d2a34f47b6fd8cae871e3",
         intel: "6641be7457fde9ce4d2fe514a0d0433bf34ae134cdb262f0b377496e040260ea"

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
