cask 'caret' do
  version '1.13.0'
  sha256 '302528ac9f2d59429d84dc3bafdb0539013ea40d07d71025eff6e6194a60fa5c'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '328959312f1bbefe6d14814b38776a810012e4309ce44700797d9e2165829646'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
