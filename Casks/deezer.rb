cask 'deezer' do
  version '0.15.2'
  sha256 '1793088582c5ff6e31eec49d3ee7d2ecfbb08a598b5d2dcb5c83bde7ac1bc889'

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  name 'Deezer'
  homepage 'https://www.deezer.com/download'

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Deezer',
               '~/Library/Preferences/com.deezer.Deezer.plist',
             ]
end
