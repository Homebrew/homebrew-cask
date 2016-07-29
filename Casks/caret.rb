cask 'caret' do
  version '1.5.1'
  sha256 '145b93a80ff5c1d170d762beb98c62dfb1a97ab54cc9d49303fd8384def11443'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '6d765756107e24d5c217e4f4269899ada41a802467ef887d3c568012c3d59b44'
  name 'Caret'
  homepage 'http://caret.io/'
  license :commercial

  app 'Caret.app'
end
