cask 'cacher' do
  version '1.5.5'
  sha256 '9c7eeb05560b4b0c427d79cee91fb9631c79180348e15fd90ddc713ac9b7a6c3'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: 'b6aed2b14474063b8b7384c20a36d8743788b93b1f83c4e1083a73a4669b705c'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
