cask "hbuilderx" do
  arch arm: ".arm64"

  version "5.03.2026031210"
  sha256 arm:   "c818de74943371e311aeff843d8cb9dd221cc80b1317dd04b6c47d3ca833fd4b",
         intel: "d5d226ab8957cfa14346dca503bc78bd939864807de1bd48e7c9e2d3a8bf4f4a"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}#{arch}.dmg",
      verified: "download1.dcloud.net.cn/download/"
  name "HBuilderX"
  desc "HTML editor"
  homepage "https://www.dcloud.io/hbuilderx.html"

  livecheck do
    url "https://download1.dcloud.net.cn/hbuilderx/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "HBuilderX.app"

  zap trash: "~/Library/Application Support/HBuilder X"
end
