cask 'caret' do
  version '2.0.10'
  sha256 '133f25af85e2051e8bbc29ffe650efcd3a615e45a5e811243836e0b7724a7dc3'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'ee703f7bd12d45bc1b531e069ec2a9507a3ff8726e3a0f7ab74616e921f1861b'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
