cask "imgotv" do
  version "6.4.16"
  sha256 "55c8e749fc04b039fd0d0541c312730fccb57d063ad3d9cabd28d519922b0c9c"

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

  caveats do
    requires_rosetta
  end
end
