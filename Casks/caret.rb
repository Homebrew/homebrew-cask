cask 'caret' do
  version '3.2.2'
  sha256 '208eb97c5649d7b9a3722ffc4979f8e9cdf89f48923ba142c1745b28df541738'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '89980d9583402cba2ae3e880aaa3fa37b590de448bb99718cc42ffb7f291752d'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
