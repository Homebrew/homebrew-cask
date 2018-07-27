cask 'buttercup' do
  version '1.9.0'
  sha256 '50fda16bed80e93d35673bbd22f7f2a9602d1615e8f5435f48ae6a06866e7f56'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
