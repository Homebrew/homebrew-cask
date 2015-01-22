cask :v1 => 'mailpile' do
  version :latest
  sha256 :no_check

  url 'https://www.mailpile.is/files/releases/Mailpile-Installer-Beta-II.dmg'
  name 'Mailpile'
  homepage 'https://www.mailpile.is/'
  license :oss

  app 'Mailpile.app'
end
