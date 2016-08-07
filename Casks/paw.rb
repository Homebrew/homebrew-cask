cask 'paw' do
  version '3.0.6'
  sha256 '60ba40d2857a4c571915897b82ad57ac192304c3d1eb5eb9eb0bcbc63ce1cead'

  # d3hevc2w7wq7nj.cloudfront.net/paw was verified as official when first introduced to the cask
  url "https://d3hevc2w7wq7nj.cloudfront.net/paw/Paw-#{version}-#{version.major}00#{version.minor}00#{version.patch}000.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: '28b6c54d24ff6c4249d2a94e891e4099b7aa7d1b547cec3d2314fba145490d9b'
  name 'Paw'
  homepage 'https://paw.cloud'
  license :commercial

  app 'Paw.app'
end
