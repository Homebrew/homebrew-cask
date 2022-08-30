cask "hbuilderx" do
  version "3.5.3.20220729"
  sha256 "3f72b4fef8a0a8343d864fab72b4646d8c192728530852a758f564cff57f42be"

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
