cask 'seafile-client' do
  version '5.1.1'
  sha256 '9b24efc4e26cc587fd7e69f5d2dc9f3f447071460996d511b132c68e5521b019'

  # bintray.com/artifact/download/seafile-org was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/seafile-org/seafile/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'http://seafile.com/'
  license :gpl

  app 'Seafile Client.app'
end
