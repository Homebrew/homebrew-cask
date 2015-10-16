cask :v1 => 'dragondrop' do
  version '1.4.1'
  sha256 '40e91b83d9a70a6f416394cddb58e758b44fa1c84950f99a6a391f60bce32e81'

  url "https://shinyplasticbag.com/dragondrop/releases/dragondrop_#{version}.dmg"
  name 'DragonDrop'
  appcast 'https://shinyplasticbag.com/dragondrop/updates.xml',
          :sha256 => '5d68912968cd59c8e98393dd5d4781f951d90837efbba42c1ba6fe17135860f0'
  homepage 'https://shinyplasticbag.com/dragondrop/'
  license :commercial

  app 'DragonDrop.app'
end
