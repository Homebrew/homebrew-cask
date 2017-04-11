cask 'caret' do
  version '2.0.9'
  sha256 'f8d71709326b8668af999e23be7a0084ef81d158cc448643be42999d212a7232'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '41762b4c3561b26ae561dfd8482cc36d73e51db8ada719fc205ede3655a49348'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
