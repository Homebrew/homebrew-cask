cask "mailmate" do
  version "5673"
  sha256 "2dc1069207d85a92c3a7000f019f8e4df88f123d2ffce4fdce17256d43c99cba"

  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz",
      verified: "mailmate-app.com/"
  name "MailMate"
  desc "IMAP email client"
  homepage "https://freron.com/"

  livecheck do
    url "https://updates.mailmate-app.com/release_notes"
    regex(/Revision\s(\d+)/i)
  end

  auto_updates true
  conflicts_with cask: "mailmate@beta"

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

  caveats do
    requires_rosetta
  end
end
