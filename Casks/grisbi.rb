cask 'grisbi' do
  version '1.2.1'
  sha256 '37c43a5356b8de4d995c386170a3ccc24a1d5f7184f5d2e709a3e31523db18e0'

  # sourceforge.net/grisbi was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/grisbi/grisbi%20stable/#{version.major_minor}.x/Grisbi-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/grisbi/rss?path=/grisbi%20stable'
  name 'Grisbi'
  homepage 'http://www.grisbi.org/'

  app 'Grisbi.app'
end
