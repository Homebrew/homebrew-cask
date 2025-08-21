cask "refine" do
  version "1.14"
  sha256 "7404e2478da6c16da9bef5eb32633d3758898d2eb41cca57122cc528ff94efd2"

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
    "~/Library/Caches/com.runjuu.refine",
    "~/Library/HTTPStorages/com.runjuu.refine",
    "~/Library/Preferences/com.runjuu.refine.plist",
  ]
end
