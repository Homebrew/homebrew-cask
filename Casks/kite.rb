cask 'kite' do
  version '0.20180201.0'
  sha256 'ec80b3ac10b252116af7240d57bc44a3402d9439d11975ef6aac6148051ff216'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'f436aa52462bd0e96ce717672fafd6d272572b0a9cff07a626deaab66c0f5ebe'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
