cask 'ogdesign-eagle' do
  version '1.9.1,build2'
  sha256 'ebb3f93ef826d4a800984617f92f621877cf68772d8e03b7b229cc7a788c6345'

  # eagleapp.s3-accelerate.amazonaws.com was verified as official when first introduced to the cask
  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-#{version.after_comma}.dmg?download"
  appcast 'https://eagle.cool/changelog'
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
