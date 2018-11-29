cask 'ogdesign-eagle' do
  version '1.8.2-build5'
  sha256 '3f93ede904a1b88167f32738bacad65d67eaa852f45c47045d92ac9d362b5814'

  # s3.amazonaws.com/eagleapp/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/eagleapp/releases/Eagle-#{version}.dmg"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
