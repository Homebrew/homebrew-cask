cask "mailmate" do
  version "5673"
  sha256 "2dc1069207d85a92c3a7000f019f8e4df88f123d2ffce4fdce17256d43c99cba"

  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz",
      verified: "mailmate-app.com/"
  name "MailMate"
  desc "IMAP email client"
  homepage "https://freron.com/"

  livecheck do
    url "https://updates.mailmate-app.com/10.14/release"
    regex(/url.+MailMate[._-]r?(\d+)\.t/i)
  end

  auto_updates true

  app "MailMate.app"
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"
end
