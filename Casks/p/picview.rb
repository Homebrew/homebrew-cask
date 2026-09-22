cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.1.2"
  sha256 arm:   "ed7d7a59ad80d4edef6d617e360b4f9170643ce56ef354656b8773f4a3c41440",
         intel: "284c31ac46927f3592fed69c0e634a9c6c90209bf7c59d26b0fb3c15f53176c0"

  url "https://github.com/Ruben2776/PicView/releases/download/#{version}/PicView-#{version}-macOS-#{arch}.dmg"
  name "PicView"
  desc "Picture viewer"
  homepage "https://picview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "PicView.app"

  zap trash: [
    "~/Library/Application Support/Ruben2776/PicView",
    "~/Library/Preferences/com.ruben2776.picview.plist",
  ]
end
