cask 'seafile-client' do
  version '5.1.4'
  sha256 'e3e36be4fa239f0174c00b7799c4d6aeec435212abc27f9981bb9af7d96fdb0f'

  # bintray.com/artifact/download/seafile-org was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/seafile-org/seafile/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://seafile.com/'
  license :gpl

  app 'Seafile Client.app'
end
