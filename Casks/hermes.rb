cask :v1 => 'hermes' do
  version '1.2.6'
  sha256 'aeecd452dc9b920abd467a6e8223db9e6c84771a'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/hermesmacapp/Hermes-#{version}.zip"
  appcast 'http://hermesapp.org/versions.xml',
          :sha256 => 'cc89f8c651e0335c91d52bb120f769ca4c418c13144155476c572ca5da21fb0e'
  name 'Hermes'
  homepage 'http://hermesapp.org/'
  license :mit

  app 'Hermes.app'
end
