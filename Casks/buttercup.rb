cask 'buttercup' do
  version '1.18.0'
  sha256 'e6994c4e3bfdf59526d4f2e1ed4daa8af6ea1467b78eccbc6f8a11699c78b5b1'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
