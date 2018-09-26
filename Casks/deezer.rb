cask 'deezer' do
  version '0.13.4'
  sha256 'db486d949342241eb2faa4f1fba0c743a35ae8f64ba7271384285e3b0e16fda5'

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Deezer',
               '~/Library/Preferences/com.deezer.Deezer.plist',
             ]
end
