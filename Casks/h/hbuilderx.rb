cask "hbuilderx" do
  arch arm: ".arm64"

  version "5.05.2026032417"
  sha256 arm:   "73979d52f33cde8db89b54f2a537724e50d02518d6f99c7b2c4f057d4c9e29c4",
         intel: "3fe4c1381165580ccc5e0994bd69b3519aaa143869237ad70a0d5110fece6e4f"

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
