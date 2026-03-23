cask "djstudio@next" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-apple"

  version "4.1.2-beta.0"
  sha256 arm:   "b1b739eaaaca2ec52d13c2b6ec7096be28af5b3364699fe956945237a6168aa1",
         intel: "6e27395c8010b45b2a7f587c04f3928ecb93dc511020f1c01f38967ae2902253"

  url "https://download.next.dj.studio/DJ.Studio%20Next-#{version}#{arch}.dmg"
  name "DJ.Studio Next"
  desc "DAW for DJs"
  homepage "https://dj.studio/"

  livecheck do
    url "https://downloads.dj.studio/djstudio/download/latest/mac#{livecheck_arch}?next=true"
    strategy :header_match
    regex(/DJ\.Studio[ _-]Next[._-](\d+(?:\.\d+)+-beta\.\d+)(?:#{arch})?\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "DJ.Studio Next.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dj.studio.app.sfl*",
    "~/Library/Application Support/DJ.Studio",
    "~/Library/Application Support/dj.studio.app",
    "~/Library/Preferences/dj.studio.app.plist",
    "~/Library/Saved Application State/dj.studio.app.savedState",
  ]
end
