cask "djstudio" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-apple"

  version "4.0.15"
  sha256 arm:   "07e96bd31b2c85af340b813b99fb633f92c05bded654d4f94789a30c69ba4348",
         intel: "ab87519063808d239600a89cc85c4af925b501ccfb1664ae207c8e5b14a54395"

  url "https://download.dj.studio/DJ.Studio-#{version}#{arch}.dmg"
  name "DJ.Studio"
  desc "DAW for DJs"
  homepage "https://dj.studio/"

  livecheck do
    url "https://dj.studio/download/latest/mac#{livecheck_arch}"
    regex(/DJ\.Studio[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "DJ.Studio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dj.studio.app.sfl*",
    "~/Library/Application Support/DJ.Studio",
    "~/Library/Application Support/dj.studio.app",
    "~/Library/Preferences/dj.studio.app.plist",
    "~/Library/Saved Application State/dj.studio.app.savedState",
  ]
end
