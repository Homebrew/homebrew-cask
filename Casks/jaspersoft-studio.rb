cask :v1 => 'jaspersoft-studio' do
  version '5.6.1'
  sha256 '339222ba8c1d640f90d6339b9f5ce5292e620c2bc256a09f75b6f413acd061d2'

  url "https://downloads.sourceforge.net/project/jasperstudio/JaspersoftStudio-#{version}/jaspersoftstudio-#{version}.final-mac-x86_64.dmg"
  homepage 'http://community.jaspersoft.com/project/jaspersoft-studio'
  license :oss

  app "Jaspersoft Studio #{version}.final/Jaspersoft Studio.app"
  caveats do
    arch_only 'intel-64'
  end
end
