cask 'epictask' do
  version '1.0.15-81'
  sha256 '1c188b892f7b1704e63ead616dcfa0961899027727a9d9b286abe3c933dd7b28'

  # s3.amazonaws.com/epictask-releases/electron was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/epictask-releases/electron/epictask-macos-#{version}.dmg"
  appcast 'https://github.com/densebrain/epictask/releases.atom',
          checkpoint: '568520ef343110d71d8f6d3800b59b788bc2556d2bdd738d3d94e8b33c6d23e5'
  name 'Epictask'
  homepage 'http://epictask.run/'

  app 'Epictask.app'
end
