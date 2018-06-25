cask 'burn' do
  version '2.5.1'
  sha256 'e82d2b7ef6a99e5a139706ff4e360659830d618ab8743e4b55ec80cdcdc97596'

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn#{version.no_dots}.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn'
  name 'Burn'
  homepage 'http://burn-osx.sourceforge.net/'

  app 'Burn.localized/Burn.app'
end
