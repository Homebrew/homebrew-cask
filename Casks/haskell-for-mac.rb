cask 'haskell-for-mac' do
  version '1.3.0'
  sha256 'e3cc1ab01b4f799bab9e103a1677180caeff72441fb7c68e05c4d5761e5811c6'

  # dl.devmate.com/com.haskellformac.Haskell.basic was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.haskellformac.Haskell.basic/Haskell%E2%80%94FunctionalProgrammingLab.dmg'
  appcast 'https://updates.devmate.com/com.haskellformac.Haskell.basic.xml',
          checkpoint: '967c75ea27da3a1955b3ca288fa52d4814e8f419770d008025a005ab0157ee83'
  name 'Haskell for Mac'
  homepage 'http://haskellformac.com'

  auto_updates true

  app 'Haskell.app'
end
