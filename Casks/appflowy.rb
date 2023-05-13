cask "appflowy" do
  version "0.1.5"
  sha256 "2f167e088e762ec292d18fc29eae41b330ff237a6afae4a6c6b8b0f18b222166"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy_#{version}_macos-x86_64.zip",
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
