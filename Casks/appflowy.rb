cask "appflowy" do
  version "0.0.5"
  sha256 "56f7946b1ec7eef63bc10dcbd41b0dc2cc597221f24489fc63f5095899738345"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-macos-x86_64.zip",
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
