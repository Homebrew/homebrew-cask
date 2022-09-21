cask "hbuilderx" do
  version "3.6.3.20220917"
  sha256 "d15c8039a2ae44622e0f420da2cda6c6fe15c0cafd5c61d95c000f5e3d304f0b"

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
