class Owncloud < Cask
  version '1.6.4.1195'
  sha256 '9f47954a85da102124f42bb0ed01eaf5c4bd15ad3ca1b9fd9b0e59c9e2f8585c'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.dmg"
  homepage 'http://owncloud.com'
  license :unknown

  app 'owncloud.app'
end
