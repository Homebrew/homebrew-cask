cask 'astah-professional' do
  version '7.1.0,f2c212'
  sha256 'c9da0c3fd403c4c2686740766624754f21e2aa8c6601e94a595c20a5d59880d7'

  url "http://cdn.astah.net/downloads/astah-professional-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg"
  name 'Change Vision Astah Professional'
  homepage 'http://astah.net/editions/professional'

  pkg "astah professional ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.change-vision.astahprofessional.astahprofessional.pkg'
end
