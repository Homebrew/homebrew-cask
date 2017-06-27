cask 'caret' do
  version '3.0.1'
  sha256 'efc7bf1c795ee7bce37f72113d38d25a6f7ff03cebe3c30ea0f08006be3f30e1'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '914bfffe0edbdf4fc017e195ab4f029284432f1cde8745bf47884a3373e901f9'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
