cask :v1 => 'mailpile' do
  version '0.4.2'
  sha256 '82cb79e2602de183a10303a9f38ca69ed2b84e72f17339c275bae79b3ebd5cfd'

  url 'https://www.mailpile.is/files/releases/Mailpile-Installer-Beta-II.dmg'
  name 'Mailpile'
  homepage 'https://www.mailpile.is/'
  license :oss

  app 'Mailpile.app'
end
