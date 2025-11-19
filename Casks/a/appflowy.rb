cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.4"
  sha256 arm:   "51c394357f1f7b5b814d1334eb640aa1a017e9f660ba52eba897e3352727026c",
         intel: "75161f4bee9b1a7fb2a1592f2915e1dff609add7157bb08a1b25b874f660fcf9"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.dmg",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
