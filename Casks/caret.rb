cask 'caret' do
  version '1.7.2'
  sha256 'f64dac3dc932198f7d4e73dffbc27ba0ddf651783718c2a17f22b37feb83db20'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '0b7e23ce9b7f7e72cff1a14838471e3cb50340294e8134574aa813e7333b638e'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
