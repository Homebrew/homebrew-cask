cask 'caret' do
  version '3.2.1'
  sha256 '6b78ee73f50cd637624cccc780eb5cf9b4a81c6d8fb3f18d4bc5d11d44e04651'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '4cc82530a6efb155fad7a6142d0437584a67a73fe0d84006ecf15ee7ec1147a1'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
