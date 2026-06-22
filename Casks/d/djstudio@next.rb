cask "djstudio@next" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-apple"

  version "4.2.3-beta.3"
  sha256 arm:   "8b11eb9652d5b8b8c1c35c38a55be9ddd2d88def33b50b4dafa0d743b61d4445",
         intel: "4bd7daa94ae024d30440486f22da705cd50ef029c57a3759c1bf26291ea10639"

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
