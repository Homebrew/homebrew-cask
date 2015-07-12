cask :v1 => 'seafile-client' do
  version '4.2.7'
  sha256 '6633db00b2498e159683ce620dac6a0316fb1f0ed43f3aa96a812b82b65b0608'

  # bintray.com is the official download host per the vendor homepage
  url "https://bintray.com/artifact/download/seafile-org/seafile/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'http://seafile.com/'
  license :gpl

  app 'Seafile Client.app'
end
