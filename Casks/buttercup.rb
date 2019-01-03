cask 'buttercup' do
  version '1.14.0'
  sha256 '025652fe2b7672566c4dfd36bc9dc87b2eb3b6cd1077eac4588cfbeec3509a89'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
