cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.4"
  sha256 arm:   "eee19e03bb8d5fd529b1fe184b8b3dcc6548f6de273b52d700dfdf0ea8c0ad45",
         intel: "f3493aaaf46956b9e654dc30b7ffdf35f4938d80f024bb60e8bc33d812151ebd"

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
