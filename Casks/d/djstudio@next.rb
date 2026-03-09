cask "djstudio@next" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-apple"

  version "4.1.0-beta.5"
  sha256 arm:   "1aa00c207880ba9e075c226e086dc6afaf0877df21c18d7013fe91b0a76b58c4",
         intel: "5b3e54734710f5d52edd7668de1e68efa89ef19c03e8b0caf08af185a10a49a4"

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
