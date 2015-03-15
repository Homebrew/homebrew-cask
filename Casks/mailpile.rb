cask :v1 => 'mailpile' do
  version '0.4.3'
  sha256 '4863de4fd4b852e026aff2deae08e6cfcc533f95f090156a32c7893ee8bda29f'

  url 'https://www.mailpile.is/files/releases/Mailpile-Installer-Beta-II-0.4.3.dmg'
  name 'Mailpile'
  homepage 'https://www.mailpile.is/'
  license :oss

  app 'Mailpile.app'
end
