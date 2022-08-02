cask "hbuilderx" do
  version "3.5.3.20220729"
  sha256 "5786de23ae4be40066a645bc190fa12a58d87cd8344c79f3d7cb6a0a66e0d44a"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg",
      verified: "download1.dcloud.net.cn/"
  name "HBuilderX"
  desc "HTML editor"
  homepage "https://www.dcloud.io/hbuilderx.html"

  livecheck do
    url "https://download1.dcloud.net.cn/hbuilderx/release.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  app "HBuilderX.app"

  zap trash: [
    "~/Library/Application Support/HBuilder X",
  ]
end
