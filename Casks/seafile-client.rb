cask :v1 => 'seafile-client' do
  version '4.4.2'
  sha256 'b6f821002f6466ff6a0ec6b6743c484fb8edb38e8052cbca8003d27aea4cbcf7'

  # bintray.com is the official download host per the vendor homepage
  url "https://bintray.com/artifact/download/seafile-org/seafile/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'http://seafile.com/'
  license :gpl

  app 'Seafile Client.app'
end
