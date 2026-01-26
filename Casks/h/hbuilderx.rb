cask "hbuilderx" do
  arch arm: ".arm64"

  version "4.87.2025121004"
  sha256 arm:   "1d9134effc3f87551b46fae9a45a3f2deb8842f507e497de4bed617a1689c993",
         intel: "9c769a6048b8934740e767bb51574553f64f8a598a1e30f324faa56a7506eca7"

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
