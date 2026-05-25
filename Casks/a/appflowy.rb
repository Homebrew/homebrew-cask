cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.0"
  sha256 arm:   "28d09d83406f2088bad3d0e973d06fbaad495d575070201bcbebb8a95fbd3fcf",
         intel: "cbf7c074f32cf81c843932bb516f4944c432b88a81e10f496408407bd2a65f93"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "AppFlowy-#{arch}.app", target: "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
