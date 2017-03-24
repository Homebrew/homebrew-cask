cask 'caret' do
  version '2.0.2'
  sha256 '23a1aad15eeb8913a908519c34cfbdc337a5aff3c213f5a323cbc75d02c34b97'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '065248621dc6157f06a595d0563ba8660132f4f1815332b7d12c1c2f167f9335'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
