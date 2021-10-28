cask "hbuilderx-full" do
  version "3.2.9.20210927"
  sha256 "aace340e9fb020c78fd0a87d4f45dc7a208684bb217aa2281e90d9150206de30"

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
