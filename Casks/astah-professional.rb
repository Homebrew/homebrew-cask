cask 'astah-professional' do
  version '7.2.0,1ff236'
  sha256 'e2faa50e8ecaaaa9f6f68dda143bf4495c0cc7b9f17fe7defda4645bb52e2751'

  # cdn.change-vision.com/files was verified as official when first introduced to the cask
  url "http://cdn.change-vision.com/files/astah-professional-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg"
  name 'Change Vision Astah Professional'
  homepage 'http://astah.net/editions/professional'

  pkg "astah professional ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.change-vision.astahprofessional.astahprofessional.pkg'
end
