cask 'caret' do
  version '1.12.2'
  sha256 '00c8e1e92a20f628b09e43ff63e23cdad05909a20640429b194b36ce54ae407d'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '267c807ba866eba090866572a12fa6c06ea241fbf19ed5e78de707a7da6b91b2'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
