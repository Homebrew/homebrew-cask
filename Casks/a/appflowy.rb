cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.1"
  sha256 arm:   "e303a8911ed60f84fa5f964bda745b9013327054ad2ef5964e2a36bd4725e685",
         intel: "9263d236e969437653b13fd932150ebccd4e608a4ef982d376fdabad22f4a38b"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AppFlowy-#{arch}.app", target: "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
