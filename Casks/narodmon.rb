cask 'narodmon' do
  version '1.5.3'
  sha256 'ba8a5bf63525ff075603b203a5d327d78857530e47fff192ec37cab83c549292'

  # github.com/niki-timofe/NarodMonOSX was verified as official when first introduced to the cask
  url "https://github.com/niki-timofe/NarodMonOSX/releases/download/#{version}/NarodMon.zip"
  appcast 'https://github.com/niki-timofe/NarodMonOSX/releases.atom',
          checkpoint: 'b82c47d9286acc23f2c6dce439901c2433d2cb0fb9c2856d1fb78ffc96ce3f1e'
  name 'NarodMon'
  homepage 'https://narodmon.ru/'

  app 'NarodMon.app'
end
