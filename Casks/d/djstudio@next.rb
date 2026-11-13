cask "djstudio@next" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-apple"

  version "5.0.11-beta.1"
  sha256 arm:   "b4b060be819299f5958a2d7a5cef7214e9f4a7a870d90b1db056196911ec8d52",
         intel: "820b4e733b529db88d20a3b2724e113c02db88b8809a5c9499e1d253c7e6d5a0"

  url "https://download.next.dj.studio/DJ.Studio%20Next-#{version}#{arch}.dmg"
  name "DJ.Studio Next"
  desc "DAW for DJs"
  homepage "https://dj.studio/"

  livecheck do
    url "https://downloads.dj.studio/djstudio/download/latest/mac#{livecheck_arch}?next=true"
    strategy :header_match
    regex(/DJ\.Studio[ _-]Next[._-](\d+(?:\.\d+)+-beta\.\d+)(?:#{arch})?\.dmg/i)
  end

  depends_on macos: :monterey

  app "DJ.Studio Next.app"

  uninstall quit: "dj.studio.next.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dj.studio.app.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dj.studio.next.app.sfl*",
    "~/Library/Application Support/DJ.Studio",
    "~/Library/Application Support/dj.studio.app",
    "~/Library/Preferences/dj.studio.app.plist",
    "~/Library/Preferences/dj.studio.next.app.plist",
    "~/Library/Saved Application State/dj.studio.app.savedState",
  ]
end
