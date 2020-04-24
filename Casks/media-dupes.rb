cask 'media-dupes' do
  version '0.8.0'
  sha256 :no_check

  url "https://github.com/yafp/media-dupes/releases/download/#{version}/media-dupes-#{version}-mac.dmg"
  appcast 'https://github.com/yafp/media-dupes/releases.atom'
  name 'media-dupes'
  homepage 'https://github.com/yafp/media-dupes'

  app 'media-dupes.app'
end
