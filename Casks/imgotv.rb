cask "imgotv" do
  version "6.4.9"
  sha256 "35606d3d165cc2cf88e8abd37b01a1a0960dc061176b99803d0a19bd8b274d67"

  url "https://download.imgo.tv/app/mac/#{version}/mgtv-mango-#{version}.dmg",
      verified: "download.imgo.tv/"
  name "芒果TV"
  desc "Mango TV video app"
  homepage "https://www.mgtv.com/app/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/mgtv[._-]mango[._-](\d+(?:\.\d+)+)\.dmg/i)
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
