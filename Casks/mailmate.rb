cask "mailmate" do
  version "5673"
  sha256 "2dc1069207d85a92c3a7000f019f8e4df88f123d2ffce4fdce17256d43c99cba"

  # mailmate-app.com/ was verified as official when first introduced to the cask
  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz"
  appcast "https://updates.mailmate-app.com/10.14/release"
  name "MailMate"
  desc "IMAP email client"
  homepage "https://freron.com/"

  auto_updates true

  app "MailMate.app"
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"
end
