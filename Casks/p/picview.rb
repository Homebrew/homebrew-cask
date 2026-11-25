cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.2.2"
  sha256 arm:   "86836dc4e85ddca6f20772816f8f4f6517473dac59a9f760584bcc2905d58c78",
         intel: "d1101f18015942b61b36a0822af9ef7239458cb54ad5dcf7fb2a11bcc582ac35"

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
