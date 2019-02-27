cask 'gitnote' do
  version '3.0.4'
  sha256 '1dc59e97f220c9d39b0f00cfef08a152ff352038ebb63891ec933ffbf27b75b3'

  # github.com/zhaopengme/gitnote was verified as official when first introduced to the cask
  url "https://github.com/zhaopengme/gitnote/releases/download/#{version}/GitNote_setup_#{version}.dmg"
  appcast 'https://github.com/zhaopengme/gitnote/releases.atom'
  name 'gitnote'
  homepage 'https://gitnoteapp.com/'

  app 'GitNote.app'
end
