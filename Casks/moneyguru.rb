cask :v1 => 'moneyguru' do
  version '2.9.3'
  sha256 '5f47715fa02c5fcd6595a733b35b99bd86b3008dff2a566deb692a7abe0b21a6'

  url "http://download.hardcoded.net/moneyguru_osx_#{version.gsub('.', '_')}.dmg"
  name 'moneyGuru'
  appcast 'http://www.hardcoded.net/updates/moneyguru.appcast',
          :sha256 => '32714462ad203d85285fd449dd472c609c8445384b579ff0dbac794e27bc8749'
  homepage 'http://www.hardcoded.net/moneyguru/'
  license :bsd

  app 'moneyGuru.app'
end
