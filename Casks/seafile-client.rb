cask :v1 => 'seafile-client' do
  version '4.3.4'
  sha256 'c35e1da65d257c04811e4fc2372d54a3a177b5edb15b324e67305158c6238007'

  # bintray.com is the official download host per the vendor homepage
  url "https://bintray.com/artifact/download/seafile-org/seafile/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'http://seafile.com/'
  license :gpl

  app 'Seafile Client.app'
end
