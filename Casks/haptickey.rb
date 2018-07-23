cask 'haptickey' do
  version '0.44'
  sha256 :no_check

  url "https://github.com/niw/HapticKey/releases/download/#{version}/HapticKey.app.zip"
  appcast 'https://github.com/niw/HapticKey/releases.atom'
  name 'haptickey'
  homepage 'https://github.com/niw/HapticKey'

  app 'HapticKey.app'
end
