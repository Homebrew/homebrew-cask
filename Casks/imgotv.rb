cask "imgotv" do
  version "6.4.7"
  sha256 "80c3ea0779b4b1612711df43d1d08b8160659c146d26d52260fe9b504d61f5cf"

  url "https://download.imgo.tv/app/mac/#{version}/mgtv-mango.dmg",
      verified: "download.imgo.tv/"
  name "芒果TV"
  desc "Mango TV video app"
  homepage "https://www.mgtv.com/app/"

  livecheck do
    url "https://pcconf.api.mgtv.com/getPcDownloadUrl?source=mango2"
    strategy :header_match
    regex(%r{/app/mac/(\d+(?:[._]\d+)+)/mgtv[._-]mango\.dmg}i)
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
