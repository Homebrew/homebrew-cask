cask 'astah-professional' do
  version '8.2.0,b743f7'
  sha256 '52ec06d8ed9e9eaa1735c463d6c55ec8ad1de01111f1ba42e9a4ae5dd502bd72'

  # cdn.change-vision.com/files was verified as official when first introduced to the cask
  url "http://cdn.change-vision.com/files/astah-professional-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg"
  appcast 'http://astah.net/download'
  name 'Change Vision Astah Professional'
  homepage 'http://astah.net/editions/professional'

  pkg "astah professional ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.change-vision.astahprofessional.astahprofessional.pkg'
end
