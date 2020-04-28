cask 'runway' do
  version '0.12.0'
  sha256 '5dd2d58062176520a42419c57c1c5367731ca59a6f59191241caaf6adeef0c25'

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://runway-releases.s3.amazonaws.com/latest-mac.yml'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
