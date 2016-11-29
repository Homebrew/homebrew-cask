cask 'autodmg' do
  version '1.6'
  sha256 '3a8df64e7785bd61050c734126024cd0557d8292562160d9a4fb951dae7d171f'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom',
          checkpoint: '72a92a5753fe1e90347d2b12f87a5ecc2a397a30680bcb65d09bb0e3de39fa1a'
  name 'AutoDMG'
  homepage 'https://github.com/MagerValp/AutoDMG'

  app 'AutoDMG.app'
end
