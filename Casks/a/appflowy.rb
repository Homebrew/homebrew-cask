cask "appflowy" do
  version "0.3.2"
  sha256 "8bd5aa714dda58cb1da0589df45251ef8a667d2102fdbb4c5b5a69b7d2055091"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy_#{version}_macos-universal.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
