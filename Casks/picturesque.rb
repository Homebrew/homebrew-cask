cask 'picturesque' do
  version '2.4.5-937'
  sha256 'f1b91abcee428783de1bfe328aae36f1315741ee61ea62d05b35f1bbc8830f8a'

  # acqualia.com was verified as official when first introduced to the cask
  url "https://www.acqualia.com/files/sparkle/picturesque_#{version}.zip"
  name 'Picturesque'
  homepage 'https://www.picturesqueapp.com/'

  app 'Picturesque.app'
end
