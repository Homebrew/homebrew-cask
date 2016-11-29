cask 'mailpile' do
  version '0.5.2'
  sha256 '05745ca69c6fa22a2e7df70a46ce7aca3d8b089685a8156734545e8f3453547a'

  url "https://www.mailpile.is/files/releases/Mailpile-Installer-Beta-III-#{version}.dmg"
  name 'Mailpile'
  homepage 'https://www.mailpile.is/'

  app 'Mailpile.app'
end
