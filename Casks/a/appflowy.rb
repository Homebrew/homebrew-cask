cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.5"
  sha256 arm:   "fcad9eb80b1570b868dad2fa3562b828dc847d8d3621d91e81214e904cf7fa25",
         intel: "1da76714069845c4f3c9c980a9b272e3a0989f62b8be65ad67b358a4e9241d47"

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
