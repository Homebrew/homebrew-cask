cask 'caret' do
  version '2.0.10'
  sha256 '133f25af85e2051e8bbc29ffe650efcd3a615e45a5e811243836e0b7724a7dc3'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '944218f54d6df9cc36e3fdd577d39cccd041cb1fa24954a903d30eede66a65d3'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
