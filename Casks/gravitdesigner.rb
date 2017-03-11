cask 'gravitdesigner' do
  version :latest
  sha256 :no_check

  url 'https://app.designer.io/_downloads/mac/GravitDesigner.zip'
  name 'Gravit Designer'
  homepage 'http://designer.io/'

  app 'GravitDesigner.app'
end
