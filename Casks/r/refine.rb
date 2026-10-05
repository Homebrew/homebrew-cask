cask "refine" do
  version "1.41"
  sha256 "677b40576d10ed8af1efe2551d2fbf218a45e3fd3902ed7dc85e6229f614661b"

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
