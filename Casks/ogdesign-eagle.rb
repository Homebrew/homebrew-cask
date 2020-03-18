cask 'ogdesign-eagle' do
  version '1.11,build3'
  sha256 'c504887564465c996e2a1ed5dfa5220dcae70bc601aa2c1606c8306cfa7751aa'

  # eagleapp.s3-accelerate.amazonaws.com was verified as official when first introduced to the cask
  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://eagle.cool/changelog'
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
