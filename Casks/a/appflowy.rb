cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.6"
  sha256 arm:   "9c22a9d8b6e00940447779da221a59b4e29dc98f394b9864b7e0c5bd8ebe7766",
         intel: "17c6c024965af50544ec11040aa5a50b8e7ff3159e9ef8582c88b14cfe9b79a9"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.zip",
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
