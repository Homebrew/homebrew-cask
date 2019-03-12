cask 'ogdesign-eagle' do
  version '1.9.0,4'
  sha256 '31e86b222a4d3343b4dc29df3d1ef3032d876eca654f4efce3a709c23b8007ec'

  # eagleapp.s3-accelerate.amazonaws.com was verified as official when first introduced to the cask
  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-#{version.after_comma}.dmg?download"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
