cask 'jaspersoft-studio' do
  version '6.3.1'
  sha256 'e2c0e713d3c5b309e1944c3d472f9dcea9e29d4c0ba439942f377ba9786fcd6a'

  # sourceforge.net/project/jasperstudio was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/project/jasperstudio/JaspersoftStudio-#{version}/TIBCOJaspersoftStudio-#{version}.final-mac-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss',
          checkpoint: '8119c62e016755bd697e8becfc82f9eb342766a8e6d89895b02242588482faab'
  name 'Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  depends_on arch: :x86_64

  app "Jaspersoft Studio #{version}.final/Jaspersoft Studio.app"
end
