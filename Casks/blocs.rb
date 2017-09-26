cask 'blocs' do
  version '2.4.2'
  sha256 '27d1fcb38efe5af51a461ff7c0945c5bacb1437d3de46fe7e61c090eb00b2dca'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml",
          checkpoint: 'f2ddabae0cedaca8811798c2d2eba7eed2537c0699106cdf23d74c90fece2cab'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
