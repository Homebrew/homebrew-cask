cask "hbuilderx-full" do
  version "3.2.9.20210927"
  sha256 "bff50574022a8d4845f51184892a4f564c3cd6644b2d7b0e048d095b73f9b72c"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.full.dmg",
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

  conflicts_with cask: "hbuilderx"

  app "HBuilderX.app"
end
