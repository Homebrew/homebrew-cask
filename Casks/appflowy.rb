cask "appflowy" do
  version "0.0.5.1"
  sha256 "a7eac9ed127f8d7252ffb740fe8fb943ff9914b29598e8f12f99a95a15aef0d8"

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
