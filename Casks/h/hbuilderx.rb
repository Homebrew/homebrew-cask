cask "hbuilderx" do
  arch arm: ".arm64"

  version "4.84.2025110307"
  sha256 arm:   "345531f87732bb46b0f2e44064f8165fde94a896a08cbc1ae5b96fd6a0e09903",
         intel: "d87b17b0693f185e6b6a7ee226e0ccce78eff096d53107a12ee4bbb238b154ad"

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
