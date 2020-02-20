cask 'ogdesign-eagle' do
  version '1.10,4'
  sha256 '8d9eb7c63b533acbeb8d4a0a84d6026bfc0d1d005ed583b0e8f291d5bf9d8bdd'

  # eagleapp.s3-accelerate.amazonaws.com was verified as official when first introduced to the cask
  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-build#{version.after_comma}.dmg"
  appcast 'https://eagle.cool/changelog'
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
