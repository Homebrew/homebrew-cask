cask "tella" do
  version "1.44"
  sha256 "2123bbdf72034a2bf2cc341ccf632f2545d1a230be02c7b60abecd69e6d77128"

  url "https://mac.tella.tv/Tella-#{version}.dmg"
  name "Tella"
  desc "Screen recorder"
  homepage "https://www.tella.tv/"

  livecheck do
    url "https://mac.tella.tv/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Tella.app"

  zap trash: [
    "~/Library/Application Scripts/tv.tella.Tella",
    "~/Library/Containers/tv.tella.Tella",
    "~/Library/Preferences/tv.tella.Tella.plist",
  ]
end
