cask 'subsmarine' do
  version '1.2.3'
  sha256 '8cdaec741029dec8a45fe55679009fa4a30ede35704b313888388618c331f000'

  # amazonaws.com/cwcbucket/subsmarine was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/cwcbucket/subsmarine/subsmarine.#{version}.zip"
  appcast 'https://www.cocoawithchurros.com/shine/appcast.php?id=7',
          checkpoint: '40d2a45c63120bcfe9b0ec15c60c2f2b5b6753c98daa58c3042c6660761b57d5'
  name 'SubsMarine'
  homepage 'https://www.cocoawithchurros.com/subsmarine.php'

  app 'SubsMarine.app'
end
