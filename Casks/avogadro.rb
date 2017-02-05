cask 'avogadro' do
  version '1.90.0'
  sha256 '71392555d2d38a486ea58d4a522304b59855fa8c3f71d88316bf3828f7a064da'

  # sourceforge.net/avogadro/avogadro2 was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avogadro/avogadro2/Avogadro2-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/avogadro/rss',
          checkpoint: '84f164280cc8b8c0749dc382dcd688cff57cc31eebf6ccb907fe4563b2d49152'
  name 'Avogadro'
  homepage 'https://avogadro.cc/wiki/Main_Page'

  app 'Avogadro2.app'
end
