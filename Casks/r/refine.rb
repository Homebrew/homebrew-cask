cask "refine" do
  version "1.24"
  sha256 "e18de98d4e7902df3e1d30e166f631074abd633a4e900c3b2649a355bd801456"

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
