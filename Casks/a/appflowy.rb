cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.4"
  sha256 arm:   "7122e1b0db4962512964034901533abea1299764842f5089b10fdd94919b6556",
         intel: "c697f25d91448038d99b053f546e807464febfded702585e1962f9db4dacafd6"

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
