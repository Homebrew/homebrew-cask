cask 'seafile-client' do
  version '6.0.1'
  sha256 'c6e95f7dc6ab8c2d1a6a886a79504a5e953edb921135b635066ce2984a28bdc1'

  # bintray.com/artifact/download/seafile-org was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/seafile-org/seafile/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
