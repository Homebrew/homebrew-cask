cask 'seafile-client' do
  version '5.0.3'
  sha256 '612d8f00fffe208f0bda559c02013685d546f174e06c5107c2abd1c4c698f1c1'

  # bintray.com/artifact/download/seafile-org was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/seafile-org/seafile/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'http://seafile.com/'
  license :gpl

  app 'Seafile Client.app'
end
