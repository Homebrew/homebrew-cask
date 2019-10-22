cask 'buttercup' do
  version '1.17.2'
  sha256 '2906259f9d21fcb4facc210cf7454c6cce0bdaad904e52ff9a0303e0e3d78599'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
