cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.3"
  sha256 arm:   "d3cdb8451c452bfb3fc745239e4a539c10c874c291faae5f08fd487b0238a228",
         intel: "cd2a179475e7a8c64734988fd835ed098bbf22b79ab89f0dd6c0db11114f66ff"

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
