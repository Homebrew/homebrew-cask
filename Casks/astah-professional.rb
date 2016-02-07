cask 'astah-professional' do
  version '7.0.0'
  sha256 'f9077dfe61f7ccf378c68031f9d888f2c5d349a83aeb34c9517cc046baca953e'

  url "http://cdn.astah.net/downloads/astah-professional-#{version.gsub('.', '_')}-846701-MacOs.dmg"
  name 'Change Vision Astah Professional'
  homepage 'http://astah.net/editions/professional'
  license :commercial

  pkg "astah professional ver #{version.gsub('.', '_')}.pkg"

  uninstall pkgutil: 'com.change-vision.astahprofessional.astahprofessional.pkg'
end
