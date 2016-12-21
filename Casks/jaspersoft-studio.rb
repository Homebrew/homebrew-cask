cask 'jaspersoft-studio' do
  version '6.3.1'
  sha256 'e2c0e713d3c5b309e1944c3d472f9dcea9e29d4c0ba439942f377ba9786fcd6a'

  # sourceforge.net/jasperstudio was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/TIBCOJaspersoftStudio-#{version}.final-mac-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss',
          checkpoint: 'f90cd2b1b04de19ab2c8fcbdd5392018e55734b28ede1eaa3209c3957bc20707'
  name 'Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  app "Jaspersoft Studio #{version}.final/Jaspersoft Studio.app"
end
