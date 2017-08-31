cask 'freac' do
  version '20170729'
  sha256 '5bef885fb4d714a8d3e768daffd30457711dbbdf0172f4ad83c97bf213ca53d0'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/bonkenc/rss',
          checkpoint: '0672e279e9a47574d7dba80dd21e007e3cdabd30a296d957da8cbdbfe3db6660'
  name 'fre:ac'
  homepage 'https://www.freac.org/'

  app 'freac.app'
end
