cask 'mu-editor' do
  version '1.0.2'
  sha256 'd0be1d6268cff60f65947280f1d0f2b05b28e67c07ee4c7dd3773a195a3d2f71'

  # github.com/mu-editor/mu was verified as official when first introduced to the cask
  url "https://github.com/mu-editor/mu/releases/download/#{version}/mu-editor_#{version}_osx.dmg"
  appcast 'https://github.com/mu-editor/mu/releases.atom'
  name 'Mu'
  homepage 'https://codewith.mu/'

  app 'mu-editor.app'
end
