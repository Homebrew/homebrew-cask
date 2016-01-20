cask 'jaspersoft-studio' do
  version '6.0.1'
  sha256 '4fc50e92957d1cbf9750db9a4323ff4298c404f77c8e49a6707c3eca6b1a29d2'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/jasperstudio/JaspersoftStudio-#{version}/TIBCOJaspersoftStudio-#{version}.final-mac-x86_64.dmg"
  name 'Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'
  license :oss

  depends_on arch: :x86_64

  app "Jaspersoft Studio #{version}.final/Jaspersoft Studio.app"
end
