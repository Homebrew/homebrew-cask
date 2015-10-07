cask :v1_1 => 'scrup' do
  version '1.3.3'
  sha256 '5004222db9a6ddd4e6cb525d00e95f8a38e9fb623bc1397e5258b2ef2c4bd3b0'

  # hunch.se is the official download host per the vendor homepage
  url "http://data.hunch.se/scrup/Scrup-#{version}-bd23160.zip"
  appcast 'https://s.rsms.me/scrup/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Scrup'
  homepage 'https://github.com/rsms/scrup'
  license :mit

  app 'Scrup.app'

  caveats do
    discontinued
  end
end
