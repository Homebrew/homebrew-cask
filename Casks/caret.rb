cask 'caret' do
  version '2.0.3'
  sha256 '410b1be6dc19be603faa21744d2010f7f4094af9a738313bc77081eaafa6a1f1'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '83432c8840b3ce6488ae82e40588f410e630f49164e315170f37adc70952b834'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
