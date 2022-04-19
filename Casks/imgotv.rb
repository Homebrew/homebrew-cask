cask "imgotv" do
  version "6.4.6_1"
  sha256 "af68f7ec41444eb274ce7bc4d8e2c6b39b36f2d20b8299d507b0a3cd41e1b967"

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

  depends_on macos: ">= :yosemite"

  app "芒果TV.app"

  zap trash: [
    "~/Library/Caches/com.mgtv.pcclientx",
    "~/Library/Containers/com.mgtv.MGTV-macOS",
    "~/Library/Preferences/com.mgtv.pcclientx.plist",
    "~/Library/Saved Application State/com.mgtv.pcclientx.savedState",
  ]
end
