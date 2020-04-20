cask 'dcv-viewer' do
  version '2020.0.1710'
  sha256 'e31300784ba7a1069426b2c359db25848e4d47dbb0aa2d0cbe0f8692d6ec3b51'

  # d1uj6qtbmh3dt5.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.dmg"
  appcast 'https://www.nice-dcv.com/'
  name 'NICE DCV Viewer'
  homepage 'https://www.nice-dcv.com/'

  app 'DCV Viewer.app'
end
