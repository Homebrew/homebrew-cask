cask 'dragondrop' do
  version '1.4.1'
  sha256 '40e91b83d9a70a6f416394cddb58e758b44fa1c84950f99a6a391f60bce32e81'

  url "https://shinyplasticbag.com/dragondrop/releases/dragondrop_#{version}.dmg"
  appcast 'https://shinyplasticbag.com/dragondrop/updates.xml',
          :sha256 => '6b0d27ada18459bd2d65c2cbf6284b1db6350489a63cd32c27973ceedc728d48'
  name 'DragonDrop'
  homepage 'https://shinyplasticbag.com/dragondrop/'
  license :commercial

  app 'DragonDrop.app'
end
