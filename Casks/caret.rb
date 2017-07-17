cask 'caret' do
  version '3.2.2'
  sha256 '208eb97c5649d7b9a3722ffc4979f8e9cdf89f48923ba142c1745b28df541738'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '70465dc1b4102b55633852a894eb3908e7b8830b71210c8b0f955bbb1fada794'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
