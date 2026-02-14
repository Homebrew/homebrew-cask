cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.2"
  sha256 arm:   "3eb1295af38eb059c209ca9d676a2b3e2d1a84e5f15982a10edd537053824622",
         intel: "7e999d73c05c78eafdd64f3e23323b9896baa2537aabf8eeb4ecfc95a13d7473"

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
