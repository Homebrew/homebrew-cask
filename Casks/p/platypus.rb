cask "platypus" do
  version "5.5.0"
  sha256 "2fad132e717e6543b41e5e7aeb357e8846baf8c9f3b3cb2919dc0f5eec3de415"

  url "https://sveinbjorn.org/files/software/platypus/platypus#{version}.zip"
  name "Platypus"
  desc "Tool to create native applications from command-line scripts"
  homepage "https://sveinbjorn.org/platypus"

  livecheck do
    url "https://sveinbjorn.org/files/appcasts/PlatypusAppcast.xml"
    strategy :sparkle, &:short_version
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Platypus.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sveinbjorn.platypus.sfl*",
    "~/Library/Application Support/Platypus",
    "~/Library/Caches/org.sveinbjorn.Platypus",
    "~/Library/Preferences/org.sveinbjorn.Platypus.plist",
  ]
end
