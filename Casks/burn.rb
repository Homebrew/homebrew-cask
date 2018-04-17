cask 'burn' do
  version '2.5.1'
  sha256 'e82d2b7ef6a99e5a139706ff4e360659830d618ab8743e4b55ec80cdcdc97596'

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn#{version.no_dots}.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn',
          checkpoint: '647f9148eae77326d9868982b9ac03a0a0d08cb389b7dab8f431a5d6c64106a3'
  name 'Burn'
  homepage 'http://burn-osx.sourceforge.net/'

  app 'Burn.localized/Burn.app'
end
