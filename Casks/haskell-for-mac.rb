cask 'haskell-for-mac' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.haskellformac.Haskell.basic was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.haskellformac.Haskell.basic/Haskell%E2%80%94FunctionalProgrammingLab.dmg'
  name 'Haskell for Mac'
  homepage 'http://haskellformac.com'

  auto_updates true

  app 'Haskell.app'
end
