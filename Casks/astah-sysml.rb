cask :v1 => 'astah-sysml' do
  version '1.3.1'
  sha256 'c84d04faf765ede1979e5d88a00fbc766f193295411fa7691274618611e049a5'

  url "http://cdn.astah.net/downloads/astah-sysml-#{version.gsub('.','_')}-45e8f6-MacOs.dmg"
  name 'Astah SysML'
  homepage 'http://astah.net/editions/sysml'
  license :commercial
  tags :vendor => 'Change Vision'

  pkg "astah sysml ver #{version.gsub('.','_')}.pkg"

  uninstall :pkgutil => 'com.change-vision.astahsysml.astahsysml.pkg'
end
