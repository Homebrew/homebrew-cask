cask 'hermes' do
  version '1.2.6'
  sha256 '3735d1bbae0e3ef773e0a2d169ca7f838f3e3510fe7b6fa59546c01fccbb9aa8'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/hermesmacapp/Hermes-#{version}.zip"
  appcast 'https://hermesapp.org/versions.xml',
          checkpoint: 'b165a9588985b8fb3305878405782c17504466276f2a1ecd3715fe0bd4a92205'
  name 'Hermes'
  homepage 'https://hermesapp.org/'
  license :mit

  app 'Hermes.app'
end
