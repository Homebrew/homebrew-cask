cask "hbuilderx" do
  version "3.6.15.20221228"
  sha256 "0fb824a3a722839c1cc90e76a7ee7a7b5b981e9a40e8e121a08a3d69bf587870"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg",
      verified: "download1.dcloud.net.cn/download/"
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

  zap trash: "~/Library/Application Support/HBuilder X"
end
