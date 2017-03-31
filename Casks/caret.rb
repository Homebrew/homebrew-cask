cask 'caret' do
  version '2.0.6'
  sha256 'db80c98d737e0ff2d07d962388f03c12ba59d1d52cb6ee7f74ce49b03571130e'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '134b8dbcbef7340c1699775e26a3e388765960f4b29418e09c3536c1b5d1d363'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
