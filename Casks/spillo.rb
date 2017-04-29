cask 'spillo' do
  version '157_1.10.1'
  sha256 '37aaebfc396d31475c4733648678f965f2190b323b3d92cad8165f6ec503cee8'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: 'db784836ef38a7dc1d547bec7a1289166ed41a3c0818b538120f50efdeb69631'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'

  app 'Spillo.app'
end
