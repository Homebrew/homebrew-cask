cask 'ogdesign-eagle' do
  version '1.9.0,3'
  sha256 'b17c3195c46b2de7cb5cc79e23a109ee22529c15eae3ee96e3a50eb8f9f1c5b4'

  # eagleapp.s3-accelerate.amazonaws.com was verified as official when first introduced to the cask
  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-#{version.after_comma}.dmg?download"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
