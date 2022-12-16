cask "imgotv" do
  version "6.4.11"
  sha256 "2d06b40bb3fa0fb32b96316a0497afe1dd5f4579cb7c2f9292a517939291ff21"

  url "https://download.imgo.tv/app/mac/#{version}/mgtv-mango-#{version}.dmg",
      verified: "download.imgo.tv/"
  name "芒果TV"
  desc "Mango TV video app"
  homepage "https://www.mgtv.com/app/"

  livecheck do
    url "https://pcconf.api.mgtv.com/getPcDownloadUrl?lastp=ch_home"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  app "芒果TV.app"

  zap trash: [
    "~/Library/Caches/com.mgtv.pcclientx",
    "~/Library/Containers/com.mgtv.MGTV-macOS",
    "~/Library/Preferences/com.mgtv.pcclientx.plist",
    "~/Library/Saved Application State/com.mgtv.pcclientx.savedState",
  ]
end
