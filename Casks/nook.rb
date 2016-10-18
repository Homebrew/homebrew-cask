cask 'nook' do
  version :latest
  sha256 :no_check

  url 'http://images.barnesandnoble.com/PResources/download/ereader2/bn/mac/NOOKforMac.dmg.zip'
  name 'NOOK for Mac'
  homepage 'https://www.barnesandnoble.com/u/nook-for-mac/379003592/'

  app 'NookForMac.app'
end
