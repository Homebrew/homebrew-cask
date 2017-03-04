cask 'subsmarine' do
  version '1.2.3'
  sha256 '8cdaec741029dec8a45fe55679009fa4a30ede35704b313888388618c331f000'

  # amazonaws.com/cwcbucket/subsmarine was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/cwcbucket/subsmarine/subsmarine.#{version}.zip"
  appcast 'https://www.cocoawithchurros.com/shine/appcast.php?id=7',
          checkpoint: '3f99aeebb0ac8611031f46340560ecf733977801f85d3d663ad2e812b3846701'
  name 'SubsMarine'
  homepage 'https://www.cocoawithchurros.com/subsmarine.php'

  app 'SubsMarine.app'
end
