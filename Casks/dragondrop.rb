cask :v1 => 'dragondrop' do
  version :latest
  sha256 :no_check

  url 'https://shinyplasticbag.com/dragondrop/dragondrop.dmg'
  name 'DragonDrop'
  appcast 'https://shinyplasticbag.com/dragondrop/updates.xml',
          :sha256 => '5d68912968cd59c8e98393dd5d4781f951d90837efbba42c1ba6fe17135860f0'
  homepage 'https://shinyplasticbag.com/dragondrop/'
  license :commercial

  app 'DragonDrop.app'
end
