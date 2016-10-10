cask 'burn' do
  version '2.5.1'
  sha256 'e82d2b7ef6a99e5a139706ff4e360659830d618ab8743e4b55ec80cdcdc97596'

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn251.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn',
          checkpoint: 'beba57bd08a2204b74e12d2ef99768cfef0cbd9c605dee8befd527ec2d994510'
  name 'Burn'
  homepage 'http://burn-osx.sourceforge.net/'

  app 'Burn.localized/Burn.app'
end
