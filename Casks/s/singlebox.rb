cask "singlebox" do
  version "55.0.0"
  sha256 "f9516268e50fe1d8d9d2ef2af28258a178abf084e47637c51f102238614376f9"

  url "https://cdn-2.webcatalog.io/singlebox2/Singlebox-#{version}-universal.dmg",
      verified: "cdn-2.webcatalog.io/singlebox2/"
  name "Singlebox"
  desc "Multi-account web browser"
  homepage "https://singlebox.app/en/"

  livecheck do
    url "https://cdn-2.webcatalog.io/singlebox2/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Singlebox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.webcatalog.singlebox2.sfl*",
    "~/Library/Application Support/Singlebox",
    "~/Library/Application Support/Singlebox2",
    "~/Library/Preferences/com.webcatalog.singlebox2.plist",
    "~/Library/Saved Application State/com.webcatalog.singlebox2.savedState",
  ]
end
