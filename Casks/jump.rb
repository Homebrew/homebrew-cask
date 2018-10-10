cask 'jump' do
  version '8.0.2'
  sha256 '62cf239c5f27a01bb86437b7b7bbfeac24511254e12c30feef867c3b349aa7c8'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
