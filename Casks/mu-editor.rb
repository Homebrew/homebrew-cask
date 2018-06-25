cask 'mu-editor' do
  version '1.0.0,16'
  sha256 'ae10cf856dca285bf53da5284fb77127fddf7773aa05c7c6104708af5fe054a8'

  # github.com/mu-editor/mu was verified as official when first introduced to the cask
  url "https://github.com/mu-editor/mu/releases/download/v#{version.before_comma}.beta.#{version.after_comma}/mu-editor_beta#{version.after_comma}_osx.dmg"
  appcast 'https://github.com/mu-editor/mu/releases.atom'
  name 'Mu'
  homepage 'https://codewith.mu/'

  app 'mu-editor.app'
end
