cask "megahertz-knotes" do
  version "2.6.0"
  sha256 "5946b48b0e6ac588331336f760711c11c53ef9b0030616f39db6e9a41551d434"

  url "http://cdn.knotesapp.cn/download/Knotes-#{version}.dmg"
  appcast "https://knotes#{version.major}-release-cn.s3.amazonaws.com/mac/latest-mac.yml"
  name "Knotes"
  name "糯词笔记"
  homepage "https://knotesapp.cn/"

  app "糯词笔记.app"

  zap trash: [
    "~/Library/Application Support/Knotes*",
    "~/Library/Logs/Knotes*",
    "~/Library/Preferences/com.knotesapp.knotes.helper.plist",
  ]
end
