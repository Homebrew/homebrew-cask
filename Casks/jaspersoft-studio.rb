cask 'jaspersoft-studio' do
  version '6.3.1'
  sha256 'c6bb50bd1f0e44e173db90e28080b6f08c63bd5fe0f62d5bc55b800ea85950a8'

  # sourceforge.net/jasperstudio was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/TIBCOJaspersoftStudio-#{version}.final-mac-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss',
          checkpoint: 'e2c0e713d3c5b309e1944c3d472f9dcea9e29d4c0ba439942f377ba9786fcd6a'
  name 'Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  app "Jaspersoft Studio #{version}.final.app"
end
