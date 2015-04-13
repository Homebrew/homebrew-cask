cask :v1 => 'itunes-producer' do
  name 'iTunes Producer'

  homepage 'https://itunesconnect.apple.com/WebObjects/iTunesConnect.woa/ra/ng/resources_page'
  license :closed

  pkg 'iTunesProducer.pkg'

  if MacOS.release >= :mavericks
    version '3.1'

    url 'https://itunesconnect.apple.com/downloads/Software/iTunesProducer/iTunesProducer_3.1.dmg'
    sha256 'c4b98602635757f4f40867585962b5283c89c7efea84f315a3d0d435b475f343'
  else
    version '2.9.1'

    url 'https://itunesconnect.apple.com/itunesproducer/iTunesProducer_2.9.1.dmg'
    sha256 '3e14f399e350f31e4b0e3c1833ef4bb0102912f67096440bd572b00a7f008257'

    depends_on :macos => '>= :snow_leopard'
  end
end
