cask 'jaspersoft-studio' do
  version '6.1.0'
  sha256 '71ff620a24071115d90e84aff9a5642c73e0c65e9411e869ae8879355c0bdba1'

  # downloads.sourceforge.net/project/jasperstudio was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/jasperstudio/JaspersoftStudio-#{version}/TIBCOJaspersoftStudio-#{version}.final-mac-x86_64.dmg"
  name 'Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'
  license :oss

  depends_on arch: :x86_64

  app "Jaspersoft Studio #{version}.final/Jaspersoft Studio.app"
end
