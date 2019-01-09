cask 'epictask' do
  version '1.0.15-81'
  sha256 '1c188b892f7b1704e63ead616dcfa0961899027727a9d9b286abe3c933dd7b28'

  # s3.amazonaws.com/epictask-releases/electron was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/epictask-releases/electron/epictask-macos-#{version}.dmg"
  appcast 'https://github.com/densebrain/epictask/releases.atom'
  name 'Epictask'
  homepage 'https://epictask.run/'

  app 'Epictask.app'
end
