cask "djstudio" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-apple"

  version "4.0.17"
  sha256 arm:   "4c10ffcd1037b07d7de21dabe6c9a1c59b71042f80982d313b81608e9ede44b9",
         intel: "2269b7618c84b7ac216048eb0caa8c60c471a0ab037da3d102354a68b8d36c2a"

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
