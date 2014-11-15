cask :v1 => 'subler' do
  version '0.30'
  sha256 'd0ab279f640c06ca6163144f2e11462d243bfeba32b64d258e5823cfd9386a7c'

  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'http://subler.googlecode.com/svn/doc/appcast.xml',
          :sha256 => 'b8d659a84089c8ebd4969c7e5393b0472d844c79d43bad33cbfbbe153f2dfb51'
  homepage 'https://bitbucket.org/galad87/subler'
  license :oss

  app 'Subler.app'
end
