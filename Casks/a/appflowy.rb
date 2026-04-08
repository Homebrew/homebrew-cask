cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.7"
  sha256 arm:   "bab8d0c90977b3208ad17dfd70ea3a8cd92ce11efdc0f1d76db1c829fd02646c",
         intel: "782b9cb1ede5c1c42055a98af62060dac8c5339a7be39ee01e308f873b310955"

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
