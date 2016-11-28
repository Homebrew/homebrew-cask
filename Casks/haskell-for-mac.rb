cask 'haskell-for-mac' do
  version '1.3.0,1174.1473667413'
  sha256 '01086dac60c42f113cf25df0ea5ec4adc013722c7634795033ff49d195dfff8f'

  # dl.devmate.com/com.haskellformac.Haskell.basic was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.haskellformac.Haskell.basic/#{version.after_comma.dots_to_slashes}/Haskell%E2%80%94FunctionalProgrammingLab-#{version.after_comma.major}.zip"
  appcast 'https://updates.devmate.com/com.haskellformac.Haskell.basic.xml',
          checkpoint: '967c75ea27da3a1955b3ca288fa52d4814e8f419770d008025a005ab0157ee83'
  name 'Haskell for Mac'
  homepage 'http://haskellformac.com/'

  auto_updates true

  app 'Haskell.app'
end
