cask "djstudio@next" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-apple"

  version "4.2.5-beta.0"
  sha256 arm:   "c9ef1b1c5b9b41ac12184e217ecd32d6e238450ef3751ec7ff25496527bbbf8d",
         intel: "15ccd5d78f3c21a7b2df09b6922b4cb05cc9250e0bcd0d41798b7eee53fe400d"

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

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dj.studio.app.sfl*",
    "~/Library/Application Support/DJ.Studio",
    "~/Library/Application Support/dj.studio.app",
    "~/Library/Preferences/dj.studio.app.plist",
    "~/Library/Saved Application State/dj.studio.app.savedState",
  ]
end
