cask 'screencat' do
  version '4.2.0'
  sha256 '08230919e4efd3bf75900276f61810bfdea1c6fb6ff7026195a0004733c20d0e'

  # github.com/maxogden/screencat was verified as official when first introduced to the cask
  url "https://github.com/maxogden/screencat/releases/download/v#{version}/ScreenCat.zip"
  appcast 'https://github.com/maxogden/screencat/releases.atom',
          checkpoint: '3e8451b689135fa55033b526c18366ec0b295af0896ccc8f53e978d29d715fd4'
  name 'ScreenCat'
  homepage 'https://maxogden.github.io/screencat/'

  app 'ScreenCat.app'
end
