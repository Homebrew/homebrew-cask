cask "refine" do
  version "1.26.1"
  sha256 "f6777e105d249a21c4fdaa3b4cf34674c8f15014f745387c3cdc52f655d7ffbb"

  url "https://refine.sh/release/stable/Refine_#{version}.zip"
  name "Refine"
  desc "Grammar checker"
  homepage "https://refine.sh/"

  livecheck do
    url "https://refine.sh/release/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Refine.app"

  zap trash: [
    "~/Library/Application Support/com.runjuu.refine",
    "~/Library/Application Support/Refine",
    "~/Library/Caches/CloudKit/com.runjuu.refine",
    "~/Library/Caches/com.runjuu.refine",
    "~/Library/HTTPStorages/com.runjuu.refine",
    "~/Library/Preferences/com.runjuu.refine.plist",
    "~/Library/WebKit/com.runjuu.refine",
  ]
end
