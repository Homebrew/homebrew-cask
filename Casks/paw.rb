cask 'paw' do
  version '3.0.7'
  sha256 '0fd23b2463dd91932031bc63e9302a50e9417d18bee93f91c4a6b8d5d4a7c8c9'

  # d3hevc2w7wq7nj.cloudfront.net/paw was verified as official when first introduced to the cask
  url "https://d3hevc2w7wq7nj.cloudfront.net/paw/Paw-#{version}-#{version.major}00#{version.minor}00#{version.patch}000.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: '09fc77626f666ed77a19e04ef644ae5ba0e1a5b08086f20ea1ca2c60ac41e0cb'
  name 'Paw'
  homepage 'https://paw.cloud'
  license :commercial

  app 'Paw.app'
end
