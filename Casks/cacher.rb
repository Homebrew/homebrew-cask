cask 'cacher' do
  version '1.3.11'
  sha256 'faa3aae71fda207f8921aaf273bb363a1cb6d31e225347f338165c5512669a8e'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '86ecaf6358b9877601766385ab33f5cb84a91d09fc71336df45d526a0bfba1fa'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
