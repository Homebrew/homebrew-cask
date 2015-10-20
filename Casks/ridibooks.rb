cask :v1 => 'ridibooks' do
  version :latest
  sha256 :no_check

  url 'http://ridibooks.com/getapp?os=mac'
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'
  license :gratis

  app 'Ridibooks.app'

  zap :delete => [
                  '~/Library/Application Support/RIDI',
                  '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
                 ]
end
