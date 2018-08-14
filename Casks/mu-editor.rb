cask 'mu-editor' do
  version '1.0.0'
  sha256 '1140ad93023bbaa858d2c48e4c32e9ccaf16b3d2aa77dfe31c1d852a1e9da191'

  # github.com/mu-editor/mu was verified as official when first introduced to the cask
  url "https://github.com/mu-editor/mu/releases/download/v#{version}/mu-editor_#{version.major_minor}_osx.dmg"
  appcast 'https://github.com/mu-editor/mu/releases.atom'
  name 'Mu'
  homepage 'https://codewith.mu/'

  app 'mu-editor.app'
end
