cask 'haptickey' do
  version '0.4.5'
  sha256 '5056bb49cb57236d7f957b73995d58a413ac870d541d02f36e9f040141af5a36'

  url "https://github.com/niw/HapticKey/releases/download/#{version}/HapticKey.app.zip"
  appcast 'https://github.com/niw/HapticKey/releases.atom'
  name 'HapticKey'
  homepage 'https://github.com/niw/HapticKey'

  app 'HapticKey.app'
end
