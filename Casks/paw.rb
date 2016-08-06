cask 'paw' do
  version '3.0.6'
  sha256 '60ba40d2857a4c571915897b82ad57ac192304c3d1eb5eb9eb0bcbc63ce1cead'

  # d3hevc2w7wq7nj.cloudfront.net/paw was verified as official when first introduced to the cask
  url "https://d3hevc2w7wq7nj.cloudfront.net/paw/Paw-#{version}-#{version.major}00#{version.minor}00#{version.patch}000.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: 'f622ac241ca4816e25a624da398e8b2c711b803c228cad89dfeb75eb998c0185'
  name 'Paw'
  homepage 'https://paw.cloud'
  license :commercial

  app 'Paw.app'
end
