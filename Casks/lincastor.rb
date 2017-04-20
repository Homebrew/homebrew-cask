cask 'lincastor' do
  version '1.4'
  sha256 '2102986e6a7600ca18c0510ad395f027c4bb4d10beec229b3d73d806b6dfd378'

  # dropbox.com/s/43fuhic0mhvhb6f was verified as official when first introduced to the cask
  url 'https://www.dropbox.com/s/43fuhic0mhvhb6f/LinCastor.zip'
  appcast 'https://onflapp.appspot.com/lincastor',
          checkpoint: 'dc2c8150acb3ef4d786d65bf538edd9bdef45c0a4b2ec39fa8c1dd99ffaf3f42'
  name 'LinCastor'
  homepage 'https://onflapp.wordpress.com/lincastor/'

  app 'LinCastor.app'
end
