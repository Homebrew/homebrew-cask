cask 'icolors' do
  version '3.0'
  sha256 '92fab479c7916ee7c52efcc457d8d120acc555a05825b01ebca047f017c097b9'

  url "https://www.fadingred.com/files/icolors/icolors_#{version}.zip"
  appcast 'http://www.fadingred.com/icolors/updates.xml',
          checkpoint: '5b0763ad2b44c2b64c9fc2c6e225574e5a8bbb89730653def24e667fe615b7bd'
  name 'iColors'
  homepage 'http://www.fadingred.com/icolors/'
  license :gratis

  app 'iColors.app'
end
