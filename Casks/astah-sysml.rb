cask 'astah-sysml' do
  version '1.5.0,43297f'
  sha256 'de8e9901cdf82617ff63389108c2bba79f252d8c5f653075b9723a2236483ad4'

  # cdn.change-vision.com was verified as official when first introduced to the cask
  url "http://cdn.change-vision.com/files/astah-sysml-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg"
  appcast 'http://astah.net/download'
  name 'Change Vision Astah SysML'
  homepage 'http://astah.net/editions/sysml'

  pkg "astah sysml ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.change-vision.astahsysml.astahsysml.pkg'
end
