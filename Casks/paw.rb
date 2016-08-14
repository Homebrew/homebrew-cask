cask 'paw' do
  version '3.0.7'
  sha256 '0fd23b2463dd91932031bc63e9302a50e9417d18bee93f91c4a6b8d5d4a7c8c9'

  # d3hevc2w7wq7nj.cloudfront.net/paw was verified as official when first introduced to the cask
  url "https://d3hevc2w7wq7nj.cloudfront.net/paw/Paw-#{version}-#{version.major}00#{version.minor}00#{version.patch}000.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: '773caf40c17b85823e97c22ce7e2c164d41c4b33639ac83b8b2a22ca2137b6a2'
  name 'Paw'
  homepage 'https://paw.cloud'
  license :commercial

  app 'Paw.app'
end
