cask "djstudio" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-apple"

  version "4.2.2"
  sha256 arm:   "ceee8946e1ee2f98a9ab90386410365a78741939b3417e0dfbb3dfca38fd3150",
         intel: "fc625440ea26286bb93afe9c9f3c501fce6cb040a34bcd4c7800e7f770bb4af7"

  url "https://download.dj.studio/DJ.Studio-#{version}#{arch}.dmg"
  name "DJ.Studio"
  desc "DAW for DJs"
  homepage "https://dj.studio/"

  livecheck do
    url "https://dj.studio/download/latest/mac#{livecheck_arch}"
    regex(/DJ\.Studio[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
    strategy :header_match
  end

  depends_on macos: :monterey

  app "DJ.Studio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dj.studio.app.sfl*",
    "~/Library/Application Support/DJ.Studio",
    "~/Library/Application Support/dj.studio.app",
    "~/Library/Preferences/dj.studio.app.plist",
    "~/Library/Saved Application State/dj.studio.app.savedState",
  ]
end
