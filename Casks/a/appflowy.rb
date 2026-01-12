cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.0"
  sha256 arm:   "92d0c600c34fbe5cea8f0323fdbb6d5b093829e294ec13273065f9ee6c712257",
         intel: "e1fcaf8bfe16228e003981e837a7da13eed6d96ca3366f07b4121ad442458828"

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
