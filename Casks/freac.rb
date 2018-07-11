cask 'freac' do
  version '1.1-alpha-20180710'
  sha256 '79e2780490722ea6359eaee329852c79a796a6047a5ca4b3a804bb1e28afb183'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/bonkenc/rss'
  name 'fre:ac'
  homepage 'https://www.freac.org/'

  app 'freac.app'
end
