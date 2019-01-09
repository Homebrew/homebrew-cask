cask 'ogdesign-eagle' do
  version '1.8.2,build5'
  sha256 '3f93ede904a1b88167f32738bacad65d67eaa852f45c47045d92ac9d362b5814'

  # eagleapp.s3-accelerate.amazonaws.com was verified as official when first introduced to the cask
  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-#{version.after_comma}.dmg?download"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
