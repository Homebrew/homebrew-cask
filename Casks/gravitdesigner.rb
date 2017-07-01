cask 'gravitdesigner' do
  version :latest
  sha256 :no_check

  # designer.gravit.io/_downloads/mac was verified as official when first introduced to the cask
  url 'https://designer.gravit.io/_downloads/mac/GravitDesigner.zip'
  name 'Gravit Designer'
  homepage 'https://designer.io/'

  app 'GravitDesigner.app'
end
