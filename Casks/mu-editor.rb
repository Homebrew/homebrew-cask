cask 'mu-editor' do
  version '1.0.2'
  sha256 '70087d6f81f641829b8c457a67bc84cf4437a4fb7dec89fafdda03e26d89af88'

  # github.com/mu-editor/mu was verified as official when first introduced to the cask
  url "https://github.com/mu-editor/mu/releases/download/#{version}/mu-editor_#{version}_osx.dmg"
  appcast 'https://github.com/mu-editor/mu/releases.atom'
  name 'Mu'
  homepage 'https://codewith.mu/'

  app 'mu-editor.app'
end
