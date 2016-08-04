cask 'paw' do
  version '3.0.5'
  sha256 '5f5cfd5b9d8a7422016998831c81c5cf146992d7810a5628e42b01a9482dba9e'

  # d3hevc2w7wq7nj.cloudfront.net/paw was verified as official when first introduced to the cask
  url "https://d3hevc2w7wq7nj.cloudfront.net/paw/Paw-#{version}-#{version.major}00#{version.minor}00#{version.patch}000.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: 'c2ee1714f942d27157895db83b1cb1d535de4ffb9fee160f6dd62210f552b2f0'
  name 'Paw'
  homepage 'https://paw.cloud'
  license :commercial

  app 'Paw.app'
end
