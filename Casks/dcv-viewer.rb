cask 'dcv-viewer' do
  version '2019.1.1535'
  sha256 'f9f50d92c9c8bc07a319e4cb6cdc282aaebc643394d900ba02a8a364d0df143f'

  # d1uj6qtbmh3dt5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.dmg"
  appcast 'https://www.nice-dcv.com/'
  name 'NICE DCV Viewer'
  homepage 'https://www.nice-dcv.com/'

  app 'DCV Viewer.app'
end
