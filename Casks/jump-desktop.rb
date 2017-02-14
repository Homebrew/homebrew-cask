cask 'jump-desktop' do
  version '7.0.4'
  sha256 '5e9ef5b498de62860158b97440d4b15a00fe6d64fb8ddfd39ca8588f3d016bef'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml',
          checkpoint: '97af2ab1e629c77b4d9bc07a729620bfb8289f772eb9a61888a8ce04fd647ce1'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
