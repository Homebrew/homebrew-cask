cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.8"
  sha256 arm:   "6596fbdb0078fd0aa9626f3b4891eb2e65190ab7040c49ecbed0216e2900307a",
         intel: "df45511452279b5cccb61aafc6868ab97fc8acdbcdf5cb96c756395c85d310dc"

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
