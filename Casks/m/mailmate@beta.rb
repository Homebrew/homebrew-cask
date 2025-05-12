cask "mailmate@beta" do
  version "6255"
  sha256 :no_check

  url "https://updates.mailmate-app.com/archives/MailMateBeta.tbz",
      verified: "mailmate-app.com/"
  name "MailMate"
  desc "IMAP email client"
  homepage "https://freron.com/"

  livecheck do
    url "https://updates.mailmate-app.com/beta_release_notes"
    regex(/Revision\s(\d+)/i)
  end

  conflicts_with cask: "mailmate"
  depends_on macos: ">= :sierra"

  app "MailMate.app"
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"

  zap trash: [
    "~/Library/Application Scripts/com.freron.MailMate.MailMateShare",
    "~/Library/Application Support/MailMate",
    "~/Library/Caches/com.apple.helpd/Generated/MailMate Help*1.13.2",
    "~/Library/Caches/com.freron.MailMate",
    "~/Library/Containers/com.freron.MailMate.MailMateShare",
    "~/Library/Preferences/com.freron.MailMate.plist",
    "~/Library/Saved Application State/com.freron.MailMate.savedState",
  ]
end
