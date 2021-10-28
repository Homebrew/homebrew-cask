cask "hbuilderx-full" do
  version "3.2.9.20210927"
  sha256 "bff50574022a8d4845f51184892a4f564c3cd6644b2d7b0e048d095b73f9b72c"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.full.dmg"
  name "hbuilderx-full"
  desc "HTML editor"
  homepage ""

  livecheck do
    url "https://download1.dcloud.net.cn/hbuilderx/release.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  app "HBuilderX.app"
end
