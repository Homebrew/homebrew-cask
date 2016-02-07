cask 'mancy' do
  version '2.2.1'
  sha256 '23e7f2c611a7762fd091e594ad8b559c02f111e13a5153cf68f47c3805840ed6'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/princejwesley/Mancy/releases/download/v#{version}/Mancy-darwin-x64.zip"
  appcast 'https://github.com/princejwesley/Mancy/releases.atom',
          checkpoint: '5c0778c413211456808d9f12028237ccae54c593f6264caea916ac4020cf2db7'
  name 'Mancy'
  homepage 'http://www.mancy-re.pl/'
  license :mit

  app 'Mancy-darwin-x64/Mancy.app'
end
