cask 'haskell-for-mac' do
  version '1.3.1,1226.1481263340'
  sha256 'df7842930ea03c236c8c51f6775f66a69f3a9a7ff642da5ea0fc78c6d0831b75'

  # dl.devmate.com/com.haskellformac.Haskell.basic was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.haskellformac.Haskell.basic/#{version.after_comma.dots_to_slashes}/Haskell%E2%80%94FunctionalProgrammingLab-#{version.after_comma.major}.zip"
  appcast 'https://updates.devmate.com/com.haskellformac.Haskell.basic.xml',
          checkpoint: '315adb1b8e64404705362dcf3c25adff14ff1a4fe85cbaa3f61a5597bd7dd7c8'
  name 'Haskell for Mac'
  homepage 'http://haskellformac.com/'

  auto_updates true

  app 'Haskell.app'
end
