cask "mailmate" do
  version "5672"
  sha256 "9a34df3cfa5d49bdfabd56b715b82105130aca30b68ea9a87cb8b12e8845b8c8"

  # mailmate-app.com/ was verified as official when first introduced to the cask
  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz"
  appcast "https://updates.mailmate-app.com/10.14/release"
  name "MailMate"
  homepage "https://freron.com/"

  auto_updates true

  app "MailMate.app"
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"
end
