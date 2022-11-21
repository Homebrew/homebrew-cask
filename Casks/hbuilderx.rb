cask "hbuilderx" do
  version "3.6.5.20221121"
  sha256 "4277e688caa27b8f56cac9535246a36f2e8198a36ad64b747af257ef55044aac"

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
