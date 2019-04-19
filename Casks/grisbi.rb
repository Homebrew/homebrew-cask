cask 'grisbi' do
  version '1.2.2'
  sha256 '4dbd636df2579dfb11b5ea316753fcecaa8dc7d83e57a2552e845d6593c10f24'

  # sourceforge.net/grisbi was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/grisbi/grisbi%20stable/#{version.major_minor}.x/Grisbi-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/grisbi/rss?path=/grisbi%20stable'
  name 'Grisbi'
  homepage 'http://www.grisbi.org/'

  app 'Grisbi.app'
end
