cask 'astah-professional' do
  version '8.1.0,3ac74f'
  sha256 '55ea237e55daffb7d747450d1099cbbe560bdb2bef01946c788263c0d7ad8239'

  # cdn.change-vision.com/files was verified as official when first introduced to the cask
  url "http://cdn.change-vision.com/files/astah-professional-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg"
  name 'Change Vision Astah Professional'
  homepage 'http://astah.net/editions/professional'

  pkg "astah professional ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.change-vision.astahprofessional.astahprofessional.pkg'
end
