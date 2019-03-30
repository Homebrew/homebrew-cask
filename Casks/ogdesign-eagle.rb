cask 'ogdesign-eagle' do
  version '1.9.0,11'
  sha256 'c20191b095764e470df9ac755c9da996b69ecb333fa19d4cf62bb68c560e8bf8'

  # eagleapp.s3-accelerate.amazonaws.com was verified as official when first introduced to the cask
  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-#{version.after_comma}.dmg?download"
  appcast 'https://eagle.cool/changelog'
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
