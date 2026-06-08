cask "refine" do
  version "1.31"
  sha256 "0b70f93d9e5f6fb73c542420737a5ff5ad76fba52ab460c8e484cf9d65b52fa2"

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
