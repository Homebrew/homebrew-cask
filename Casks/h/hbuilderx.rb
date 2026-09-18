cask "hbuilderx" do
  arch arm: ".arm64"

  version "5.26.2026091802"
  sha256 arm:   "6126e03dfa1801e65368275e3681651d7bad1f835b68ded9aef782750897a968",
         intel: "725a5a10dc7e47ace660cfa7672098e94afc8b10c0e7aa7cb424b3d78ccf6065"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}#{arch}.dmg"
  name "HBuilderX"
  desc "HTML editor"
  homepage "https://www.dcloud.io/hbuilderx.html"

  livecheck do
    url "https://download1.dcloud.net.cn/hbuilderx/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos

  app "HBuilderX.app"

  uninstall quit: "io.dcloud.HBuilderX"

  zap trash: [
    "~/Library/Application Support/HBuilder X",
    "~/Library/Preferences/io.dcloud.HBuilderX.plist",
  ]
end
