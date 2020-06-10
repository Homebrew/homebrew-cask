cask 'dcv-viewer' do
  version '2020.0.1716'
  sha256 'e4ddae68e8c827d3ec28ef7c557883d901058a8d17460495a456da7e15e1a4d0'

  # d1uj6qtbmh3dt5.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.dmg"
  appcast 'https://www.nice-dcv.com/'
  name 'NICE DCV Viewer'
  homepage 'https://www.nice-dcv.com/'

  app 'DCV Viewer.app'
end
