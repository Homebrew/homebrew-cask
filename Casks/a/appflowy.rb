cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.1"
  sha256 arm:   "d0302a69437edebebc1b5f5f5391c90fe24d512bb3d5e3ca37ac46c0aa590880",
         intel: "e31b6fb61e7a53c9c52acaf576c670ce9d9337e112d8d52d0a393a44d082f0d1"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
