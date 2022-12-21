cask "appflowy" do
  version "0.0.9"
  sha256 "ca78d381fe52c31929fa297694e615e05c8c4c3d4939928686ec6969e2edbb5b"

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
