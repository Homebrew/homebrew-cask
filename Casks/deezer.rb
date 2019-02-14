cask 'deezer' do
  version '4.2.2'
  sha256 '334ae7d5c31aa136d5eeafef0156f6ab40852374f70cbd02e28ba1ef10e3e12d'

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  name 'Deezer'
  homepage 'https://www.deezer.com/download'

  auto_updates true

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Deezer',
               '~/Library/Preferences/com.deezer.Deezer.plist',
             ]
end
