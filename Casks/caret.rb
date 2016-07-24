cask 'caret' do
  version '1.4.0'
  sha256 '43949b3897584cfc44912fb91725f458b0db8fffccdd0898baf20b8c28fe0fd4'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '77800db3d65041806baecdbccd71859a96ad9c7a2098ba28dccd3cb17a70e9fb'
  name 'Caret'
  homepage 'http://caret.io/'
  license :commercial

  app 'Caret.app'
end
