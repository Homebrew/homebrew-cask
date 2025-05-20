cask "hbuilderx" do
  arch arm: ".arm64"

  version "4.66.2025051912"
  sha256 arm:   "5bbee3a496f770c846ea7dc1bd6014acb1d1a55c5b278d07ee916bb216d07f5f",
         intel: "ad5e42d34356cea237d516ae8861e86578488ba38bb45251a0badc5ff6905d71"

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

  app "HBuilderX.app"

  zap trash: "~/Library/Application Support/HBuilder X"
end
