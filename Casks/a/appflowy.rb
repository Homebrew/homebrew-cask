cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.5"
  sha256 arm:   "bfadf3436f76d060cd5d9804361af24ba4b9acb42a00d367e8e4f668b87fef08",
         intel: "b9fb1ead2a656f10737f7967a87fd715fef97a2f4a15742a029ed44963972354"

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
