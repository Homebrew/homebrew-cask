cask 'deezer' do
  version '0.9.2'
  sha256 '0e2685af1ff884a4ac542ef1dc7dbac2d9baa9eac4f940393c4aac0e93cd4ecc'

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Deezer',
               '~/Library/Preferences/com.deezer.Deezer.plist',
             ]
end
