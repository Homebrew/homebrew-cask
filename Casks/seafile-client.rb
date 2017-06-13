cask 'seafile-client' do
  version '6.0.4'
  sha256 'd44320e046f9fca13b4e4b042924aae460ce36ff78b0bbc3909d9c8812dc8132'

  # bintray.com/artifact/download/seafile-org was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/seafile-org/seafile/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
