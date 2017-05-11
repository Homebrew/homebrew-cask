cask 'caret' do
  version '2.1.0'
  sha256 'a988d40b40b79d6a1d95076d1851496e05fe47c728617e04436df14b26f7f946'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'aadbc41ecae07e89fd1a02fa1b29606386a9b290758a16298c75e0f39aed4b90'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
