cask 'deezer' do
  version '0.10.0'
  sha256 '0fe64a8e7cc3e1adacf0747a7bcb3018f815107a544de961721273ede3e1b1dd'

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Deezer',
               '~/Library/Preferences/com.deezer.Deezer.plist',
             ]
end
