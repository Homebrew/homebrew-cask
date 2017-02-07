cask 'jump-desktop' do
  version '7.0.3'
  sha256 '987763efc74b5bdefd8cdff7cf804d9fb3334a1b0a8d2acac489197a9f7ddf3d'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml',
          checkpoint: '90719bf84fce814a49fbd8645b5bd7d4655ef6980353272ae5d083ef34791d1c'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
