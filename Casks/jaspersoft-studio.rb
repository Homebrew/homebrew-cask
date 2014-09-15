class JaspersoftStudio < Cask
  version '5.5.1'
  sha256 '05294e98a9c11e0e5ffb03c68da5fab4e738c6060fcc8bcca674848d67c5dd7c'

  url "https://downloads.sourceforge.net/project/jasperstudio/JaspersoftStudio-#{version}/jaspersoftstudio-#{version}.final-mac-x86_64.dmg"
  homepage 'http://community.jaspersoft.com/project/jaspersoft-studio'

  app "Jaspersoft Studio #{version}.final/Jaspersoft Studio.app"
  caveats do
    arch_only 'intel-64'
  end
end
