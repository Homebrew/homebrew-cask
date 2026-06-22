cask "imgotv" do
  version "6.5.9"
  sha256 "d2c486468eea3304c83f1e56c14d7aae6395c555220667c2cbbc53bcd658b83c"

  url "https://download.imgo.tv/app/mac/#{version}/mgtv-mango-#{version}.dmg",
      verified: "download.imgo.tv/"
  name "芒果TV"
  desc "Mango TV video app"
  homepage "https://www.mgtv.com/app/"

  livecheck do
    url "https://pcconf.api.mgtv.com/getPcDownloadUrl?lastp=ch_home"
    strategy :header_match
  end

  depends_on :macos

  app "芒果TV.app"

  zap trash: [
    "~/Library/Caches/com.mgtv.pcclientx",
    "~/Library/Containers/com.mgtv.MGTV-macOS",
    "~/Library/Preferences/com.mgtv.pcclientx.plist",
    "~/Library/Saved Application State/com.mgtv.pcclientx.savedState",
  ]
end
