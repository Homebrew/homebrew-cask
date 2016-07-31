cask 'jaspersoft-studio' do
  version '6.1.0'
  sha256 '71ff620a24071115d90e84aff9a5642c73e0c65e9411e869ae8879355c0bdba1'

  # sourceforge.net/jasperstudio was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIBCOJaspersoftStudio-#{version}.final-mac-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss',
          checkpoint: '6b306acc2f4d67c9060263b4729526e7e65f2eb9480ce55b95e9ff246a1dbc02'
  name 'Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'
  license :oss

  depends_on arch: :x86_64

  app "Jaspersoft Studio #{version}.final/Jaspersoft Studio.app"
end
