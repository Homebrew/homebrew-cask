cask 'seafile-client' do
  version '5.0.7'
  sha256 '06be9e54b022ff5ed7e5221bd4d3218eb50cd74a4f0e549c8adc04af36b6500e'

  # bintray.com/artifact/download/seafile-org was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/seafile-org/seafile/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'http://seafile.com/'
  license :gpl

  app 'Seafile Client.app'
end
