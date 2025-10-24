cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.2"
  sha256 arm:   "6eadada93493402a0973194e5b0f2353fb414bbd8dc74ecc4b0db94ea315df79",
         intel: "0107ab9d55bbfa1447edfe3b90efac0e1081df6c1d56a131be0670cbe1149178"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.zip",
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
