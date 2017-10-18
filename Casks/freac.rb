cask 'freac' do
  version '1.1-alpha-20170902'
  sha256 '31e591e88e3540b102e8f2606ec06a73af3b7a5b30980cae22e84e7f915ea6c9'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/bonkenc/rss',
          checkpoint: '4939b8a5daf8bce38ddb7ec635408f75396d109b0d8f0f936130b28c2ef8f848'
  name 'fre:ac'
  homepage 'https://www.freac.org/'

  app 'freac.app'
end
