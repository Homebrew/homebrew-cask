cask :v1 => 'mailpile' do
  version :latest
  sha256 :no_check

  url 'https://www.mailpile.is/files/releases/Mailpile-Installer-Beta.dmg'
  homepage 'https://www.mailpile.is/'
  license :unknown    # todo: improve this machine-generated value

  app 'Mailpile.app'
end
