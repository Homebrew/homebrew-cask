cask 'caret' do
  version '2.0.11'
  sha256 'a1c768f92a093ef212d953ce4546f6030cd2c0572aa069edf66d8bd14fbdc95e'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'c091f668e9ca8798039edd24d0cdf5605b3c483b79c2eec1458abe0a5ba50c47'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
