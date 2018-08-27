cask 'noodl' do
  version '1.2.3'
  sha256 '675af92807a2b99e39667174641a326dd926d535196e9cd83f0333ff51d574d0'

  # s3.amazonaws.com/noodl-update was verified as official when first introduced to the cask
  url "http://s3.amazonaws.com/noodl-update/Noodl-#{version}.dmg"
  name 'Noodl'
  homepage 'http://www.getnoodl.com/'

  app 'Noodl.app'
end
