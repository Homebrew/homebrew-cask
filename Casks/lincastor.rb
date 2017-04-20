cask 'lincastor' do
  version '1.4'
  sha256 '0856515383b4187179002eb59eb51dfc811d294b4fff355897727ec9b1b656c1'

  # dropbox.com/s/43fuhic0mhvhb6f was verified as official when first introduced to the cask
  url 'https://www.dropbox.com/s/43fuhic0mhvhb6f/LinCastor.zip'
  appcast 'https://onflapp.appspot.com/lincastor',
          checkpoint: 'dc2c8150acb3ef4d786d65bf538edd9bdef45c0a4b2ec39fa8c1dd99ffaf3f42'
  name 'LinCastor'
  homepage 'https://onflapp.wordpress.com/lincastor/'

  app 'LinCastor.app'
end
