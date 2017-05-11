cask 'caret' do
  version '2.1.1'
  sha256 '6db503ac07a5806828914fa1f7ebdfc3ab1a3e9981c10e4caa8298acb00e79a0'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '1c9dde8f17a1c0648b0d2d135aa9b287093ab11f1f70540ceb9e69b10427e507'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
