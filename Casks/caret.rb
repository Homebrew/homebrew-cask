cask 'caret' do
  version '3.4.6'
  sha256 'a7d17bb7e9c938d8559f1569899a14413dae33bc4a7d4de038bf430447008aea'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'ea4a97f560e9bb80b8abf96c107b14576018d6cb41ca0914080c38ed67ea5e76'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
