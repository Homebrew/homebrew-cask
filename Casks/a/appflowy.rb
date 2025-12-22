cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.8"
  sha256 arm:   "f475de4b249ff9eeb0343db699f4860989a42b285cf3c027c067afbc48b1686b",
         intel: "c8c6cc6657ce3d854a00d45b6c4559c7c07dda1ee856ade270580bae1be9a9d5"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.dmg",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
