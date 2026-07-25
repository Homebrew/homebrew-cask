cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.0"
  sha256 arm:   "f888bb17ac08393874db5b1dcc813a2d6edf800814a2ad5faded139e4961833c",
         intel: "790925c87bc8a9548b330189ecaaca94ee9a37aa216e44073cab0549278606de"

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
