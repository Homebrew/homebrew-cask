cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "4.1.1"
  sha256 arm:   "bb1d7af15a369035256700205121f0d2f71118ee1ad46a7b191049cbbf4f544e",
         intel: "401c85723c77bc9ddeafc2e0d9b3ce4f044cc98930d2faa82c28ca4a58a80444"

  url "https://github.com/Ruben2776/PicView/releases/download/#{version}/PicView-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/Ruben2776/PicView/"
  name "PicView"
  desc "Picture viewer"
  homepage "https://picview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PicView.app"

  zap trash: [
    "~/Library/Application Support/Ruben2776/PicView",
    "~/Library/Preferences/com.ruben2776.picview.plist",
  ]
end
