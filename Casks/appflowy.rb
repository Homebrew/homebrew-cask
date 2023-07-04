cask "appflowy" do
  version "0.2.4"
  sha256 "5b18b2700726d7aa174d20e9b065c2993421c9a37d63188ce7a6c51b4d39a55c"

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
