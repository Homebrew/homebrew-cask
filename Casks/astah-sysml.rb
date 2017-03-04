cask 'astah-sysml' do
  version '1.4.0,08f5ed'
  sha256 '2fb756d103ca38eb832ff658987a07dcdcb9e2dd9468cb8af321eca5268baaaf'

  url "http://cdn.astah.net/downloads/astah-sysml-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg"
  name 'Change Vision Astah SysML'
  homepage 'http://astah.net/editions/sysml'

  pkg "astah sysml ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.change-vision.astahsysml.astahsysml.pkg'
end
