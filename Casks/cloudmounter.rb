cask 'cloudmounter' do
  version '3.5.585'
  sha256 'b231bce984fbdcd183cfde6573a11e4c56e11015c4e1e08e387e7320d04d889c'

  url 'https://cdn.eltima.com/download/cloudmounter.dmg'
  appcast 'https://cdn.eltima.com/download/cloudmounter-update/settings.xml',
          configuration: version.major_minor
  name 'Eltima CloudMounter'
  homepage 'https://mac.eltima.com/mount-cloud-drive.html'

  app 'CloudMounter.app'
end
