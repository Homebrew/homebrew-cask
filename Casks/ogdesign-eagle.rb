cask 'ogdesign-eagle' do
  version '1.9.1,build14'
  sha256 'eb9fcc1834fd9cd1042cb50fb7e7a8eb3ebb451ab6794264e56012180d06be21'

  # eagleapp.s3-accelerate.amazonaws.com was verified as official when first introduced to the cask
  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-#{version.after_comma}.dmg?download"
  appcast 'https://eagle.cool/changelog'
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
