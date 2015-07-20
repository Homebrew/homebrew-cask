cask :v1 => 'mailpile' do
  version '0.5.1'
  sha256 'abbdeb41d37ac3b79a44f603784b2185dc1f95ae8d54a81e9cf89af262428cd1'

  url 'https://www.mailpile.is/files/releases/Mailpile-Installer-Beta-III-0.5.1.dmg'
  name 'Mailpile'
  homepage 'https://www.mailpile.is/'
  license :oss

  app 'Mailpile.app'
end
