cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.6"
  sha256 arm:   "0d39ebb0fc167293de5f2b04a04a92827d218c775e360b0e1c18e09400df38e1",
         intel: "28aba9ea80870f555915f77ff50ff76a9bc9ac3c49b1b952be043a9ae4faa6af"

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
