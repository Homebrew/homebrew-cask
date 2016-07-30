cask 'paw' do
  version '3.0.4'
  sha256 'dc915bc860d3496d365d578e042e87bccea4d24246fa099c73cc61a31e22e822'

  # d3hevc2w7wq7nj.cloudfront.net/paw was verified as official when first introduced to the cask
  url "https://d3hevc2w7wq7nj.cloudfront.net/paw/Paw-#{version}-#{version.major}00000#{version.patch}000.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: 'f77b6d10fdaa56ea3d982e983c730fe0bedc6413d58a5519ba1c0efce39af00b'
  name 'Paw'
  homepage 'https://paw.cloud'
  license :commercial

  app 'Paw.app'
end
