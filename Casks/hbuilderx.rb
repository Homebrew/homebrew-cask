cask "hbuilderx" do
  version "3.1.22.20210709"
  sha256 "4db66a6f9e389c8cc3da6ebb66d0d8e1833619a317e6d8d8617e2f304ca6ba55"

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
end
