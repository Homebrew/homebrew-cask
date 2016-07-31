cask 'burn' do
  version '2.5.1'
  sha256 'e82d2b7ef6a99e5a139706ff4e360659830d618ab8743e4b55ec80cdcdc97596'

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn251.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss',
          checkpoint: '26316979317f1d4ae8f69ddaa666682fe59c566647ae25f4cb8f16a268232109'
  name 'Burn'
  homepage 'http://burn-osx.sourceforge.net/'
  license :gpl

  app 'Burn.localized/Burn.app'
end
