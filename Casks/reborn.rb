cask 'reborn' do
  version '0.5.48'
  sha256 '80977d36e98582b0f6364cf9273801074adb792a09d638af652cf55f466d7c0b'

  url "https://github.com/langyanduan/Reborn/releases/download/#{version}/Reborn.zip"
  appcast 'https://github.com/langyanduan/Reborn/releases.atom'
  name 'Reborn'
  homepage 'https://github.com/langyanduan/Reborn'

  app 'Reborn.app'
end
