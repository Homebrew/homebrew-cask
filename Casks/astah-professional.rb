cask 'astah-professional' do
  version '8.0.0,d641d4'
  sha256 '3c449a08c6c4ba2404a4cf418d5322ed43fd460daaebcbc81fc8d274c085d2f8'

  # cdn.change-vision.com/files was verified as official when first introduced to the cask
  url "http://cdn.change-vision.com/files/astah-professional-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg"
  name 'Change Vision Astah Professional'
  homepage 'http://astah.net/editions/professional'

  pkg "astah professional ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.change-vision.astahprofessional.astahprofessional.pkg'
end
