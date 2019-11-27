cask 'sourcetrail' do
  version '2019.4.61'
  sha256 '03ffaa3152121d2131229b5df5599967c5c1b30fbe489b08dafeba07806fe1ac'

  url "https://www.sourcetrail.com/downloads/#{version}/osx/64bit"
  appcast 'https://github.com/CoatiSoftware/Sourcetrail/releases.atom'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
