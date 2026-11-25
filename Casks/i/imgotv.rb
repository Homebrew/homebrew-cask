cask "imgotv" do
  version "6.6.0"
  sha256 "0f549b51ab66b7ab53986dc62d5811c55618f239806a96a8791967d9276dd885"

  url "https://download.imgo.tv/app/mac/#{version}/mgtv-mango-#{version}.dmg"
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
