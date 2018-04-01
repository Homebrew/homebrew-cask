cask 'macdive' do
  version '2.9.2'
  sha256 'bfd8e7ee70a9c58908c163dc69263aaa72326a05d1c810296be8e42fe2ff2ac7'

  url "http://mac-dive.com/shimmer/?download&appName=MacDive&appVariant=&appVersion=#{version}"
  appcast 'https://mac-dive.com/shimmer/?appcast&appName=MacDive',
          checkpoint: '74973b8d594c898ae6ed5377d78db55023a31839c8e07af045caf2c37e888d39'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
