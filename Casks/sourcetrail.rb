cask 'sourcetrail' do
  version '2019.4.61'
  sha256 '03ffaa3152121d2131229b5df5599967c5c1b30fbe489b08dafeba07806fe1ac'

  # github.com/CoatiSoftware/Sourcetrail was verified as official when first introduced to the cask
  url "https://github.com/CoatiSoftware/Sourcetrail/releases/download/#{version}/Sourcetrail_#{version.dots_to_underscores}_macOS_64bit.zip"
  appcast 'https://github.com/CoatiSoftware/Sourcetrail/releases.atom'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
