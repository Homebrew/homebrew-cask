cask "hbuilderx" do
  version "3.6.14.20221215"
  sha256 "e16b45daf29b3153f25e308cc4499efa3d6a405c1903ff9a3ff0d155a8e574b4"

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
