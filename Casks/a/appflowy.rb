cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.9"
  sha256 arm:   "71cadce2f649e26c44641a8513637c3ba4911b207848c046ad57e7d03a43e1f0",
         intel: "481c7f018718fffe46b87c32f0802a97333259396bf8205bdbdc4b541e9dbab1"

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
