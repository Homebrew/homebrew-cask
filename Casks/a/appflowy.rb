cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.2"
  sha256 arm:   "daa55ec8a90f57bcae12a1698fd38614432ac3edaf893743186d5316f6a66d5c",
         intel: "32d67a5a3678422e4c640bc3e145bc0d38f0437116018d6a9fd4d7a46fcaac4e"

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
