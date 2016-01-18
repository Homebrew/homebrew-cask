cask 'nook' do
  version :latest
  sha256 :no_check

  url 'http://images.barnesandnoble.com/PResources/download/ereader2/bn/mac/NOOKforMac.dmg.zip'
  name 'NOOK for Mac'
  homepage 'http://www.barnesandnoble.com/u/nook-for-mac/379003592/'
  license :gratis

  container nested: 'NOOK for Mac.dmg'

  app 'NookForMac.app'
end
