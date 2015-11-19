cask :v1 => 'ridibooks' do
  version '1.5.9b'
  sha256 '27e06ef0625f8958a909c7801bfd0108d975164fec9b241d1a12ab083edea2e0'

  # ridicorp.com is the official download host per the vendor homepage
  url "http://cdn.ridicorp.com/app/mac/ridibooks-#{version}.dmg"
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'
  license :gratis

  app 'Ridibooks.app'

  zap :delete => [
                  '~/Library/Application Support/RIDI',
                  '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
                 ]
end
