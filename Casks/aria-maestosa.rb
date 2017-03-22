cask 'aria-maestosa' do
  version '1.4.13'
  sha256 'a3a04954ff7258141d4762659f49a204e42f24a06fab6ba318f47a749e6398c0'

  url "https://downloads.sourceforge.net/ariamaestosa/AriaMaestosa-osx-#{version}.zip"
  appcast 'https://sourceforge.net/projects/ariamaestosa/rss',
          checkpoint: '27ab42b1eaccdf79de35fa54c8dfd33c8e25b079a221e14d11e7d17efb64cac6'
  name 'Aria Maestosa'
  homepage 'http://ariamaestosa.sourceforge.net/'

  app "AriaMaestosa-#{version}/Aria Maestosa.app"
end
