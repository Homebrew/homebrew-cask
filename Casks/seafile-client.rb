cask :v1 => 'seafile-client' do
  version '4.2.8'
  sha256 'a12aa02f629da4a05a28e37a8ecfcafe33c8e4776216d0bd74fbacd56325e471'

  # bintray.com is the official download host per the vendor homepage
  url "https://bintray.com/artifact/download/seafile-org/seafile/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'http://seafile.com/'
  license :gpl

  app 'Seafile Client.app'
end
