cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 :no_check

  url "https://release.piclist.cn/latest/PicList-#{version}-#{arch}.dmg"
  name "PicList"
  desc "A simple and powerful cloude storage manage tool."
  homepage "https://github.com/Kuingsmile/PicList"

  livecheck do
    url "https://release.piclist.cn/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "PicList.app"
end
