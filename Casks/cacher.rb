cask 'cacher' do
  version '2.12.4'
  sha256 '12bc7c3e6ea3fbd76a2b58b9856ce16dfa12c6a6c6ca89086de286ce09a3dc94'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
