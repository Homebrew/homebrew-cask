cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.3"
  sha256 arm:   "f166f22279c25e67ab5ec675cd05a4d8ad09dd560ebb407f9a09a80cc91f5426",
         intel: "bfce18306749e41c3e3bb3d86c611189a8fc74f444ce39f6e71d66f8687e1ace"

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
