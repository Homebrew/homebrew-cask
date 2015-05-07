cask :v1 => 'hermes' do
  version '1.2.6'
  sha256 '3735d1bbae0e3ef773e0a2d169ca7f838f3e3510fe7b6fa59546c01fccbb9aa8'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/hermesmacapp/Hermes-#{version}.zip"
  appcast 'http://hermesapp.org/versions.xml',
          :sha256 => 'cc89f8c651e0335c91d52bb120f769ca4c418c13144155476c572ca5da21fb0e'
  name 'Hermes'
  homepage 'http://hermesapp.org/'
  license :mit

  app 'Hermes.app'
end
