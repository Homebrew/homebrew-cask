cask 'caret' do
  version '3.2.0'
  sha256 '69d36574574aab004bfab950694072aa43abea14612304f15e5d34b4225c0abd'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '313a6a7f125770fe01111e3230b4da673588beb2ead52200d05b18dff252564f'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
