cask "hbuilderx" do
  arch arm: ".arm64"

  version "5.24.2026081301"
  sha256 arm:   "3a1e0041551b25ddedcf00301ae0b00009167821749f953f917636b5f54e877b",
         intel: "1539b4aaeffe1cbddcfc827e7f4928bd65755a35df1bce540fc350e75f868eae"

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

  depends_on macos: :big_sur

  app "HBuilderX.app"

  zap trash: "~/Library/Application Support/HBuilder X"
end
