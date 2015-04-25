cask :v1 => 'dragondrop' do
  version :latest
  sha256 :no_check

  url 'http://shinyplasticbag.com/dragondrop/dragondrop.dmg'
  name 'DragonDrop'
  homepage 'http://shinyplasticbag.com/dragondrop/'
  license :commercial

  app 'DragonDrop.app'
end
