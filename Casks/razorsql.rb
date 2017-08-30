cask 'razorsql' do
  version '7.3.4'
  sha256 'e3f8905c33c7ba2b7b2c06971fbc0dc8d373495787978446cda17ba37c48ab07'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: 'af40671b1a82e6f5e838e028f3d64130394c9e059249269de93bcc8de62e63bd'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
