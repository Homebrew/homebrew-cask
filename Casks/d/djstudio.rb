cask "djstudio" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-apple"

  version "4.1.6"
  sha256 arm:   "78d8253423facbb568dd5a262a95b3e7a1955ff32fd9ba34b17cc4fc78bfe616",
         intel: "4ca239f458a025630c088ac1b5ca2c331349615217728a35cc3494e2519785da"

  url "https://download.dj.studio/DJ.Studio-#{version}#{arch}.dmg"
  name "DJ.Studio"
  desc "DAW for DJs"
  homepage "https://dj.studio/"

  livecheck do
    url "https://dj.studio/download/latest/mac#{livecheck_arch}"
    regex(/DJ\.Studio[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
    strategy :header_match
  end

  depends_on macos: :big_sur

  app "DJ.Studio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dj.studio.app.sfl*",
    "~/Library/Application Support/DJ.Studio",
    "~/Library/Application Support/dj.studio.app",
    "~/Library/Preferences/dj.studio.app.plist",
    "~/Library/Saved Application State/dj.studio.app.savedState",
  ]
end
