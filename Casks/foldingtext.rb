cask 'foldingtext' do
  version '2.1.2'
  sha256 '8d5adf4332d79e734ec147f0bad9b765210b168cf3e3dc75cdcb0781af231136'

  # amazonaws.com/foldingtext was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/foldingtext/FoldingText.dmg'
  appcast 'https://foldingtext.s3.amazonaws.com/FoldingText.rss',
          checkpoint: '52831575716556573cb50ca39c4425cbd407e945d8cab642b76964dc3a616cab'
  name 'FoldingText'
  homepage 'http://www.foldingtext.com'
  license :commercial

  app 'FoldingText.app'
end
