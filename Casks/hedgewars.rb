cask :v1 => 'hedgewars' do
  version '0.9.20'
  sha256 '167667f32f4798733b7bfd50423493067e6a9fd19f02f45e737b324038f0d559'

  url "http://download.gna.org/hedgewars/Hedgewars-#{version}-3.dmg"
  appcast 'http://www.hedgewars.org/download/appcast.xml',
          :sha256 => 'bb5344972d01c4007ab4d8193fc2aaaebe68c4048213a10ba6b4cbc61210747f'
  homepage 'http://hedgewars.org'
  license :unknown

  app 'Hedgewars.app'
end
