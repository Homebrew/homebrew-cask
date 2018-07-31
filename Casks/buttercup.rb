cask 'buttercup' do
  version '1.10.0'
  sha256 '8b7942c99e9fe034abfcbc62d436717399c6182e0a9cc032579640d6cecd1620'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
