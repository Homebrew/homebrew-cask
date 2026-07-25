cask "refine" do
  version "1.34"
  sha256 "52c44f3522a0185f17353d21185c830200026eecdbcffbf85849991703ea7be9"

  url "https://refine.sh/release/stable/Refine_#{version}.zip"
  name "Refine"
  desc "Grammar checker"
  homepage "https://refine.sh/"

  livecheck do
    url "https://refine.sh/release/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

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
