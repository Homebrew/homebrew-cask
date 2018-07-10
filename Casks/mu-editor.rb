cask 'mu-editor' do
  version '1.0.0,17'
  sha256 '54c8a8187a92fbd50e0cd72de50b92a0aaea7986f3e192d6ce51705c6c5191fc'

  # github.com/mu-editor/mu was verified as official when first introduced to the cask
  url "https://github.com/mu-editor/mu/releases/download/v#{version.before_comma}.beta.#{version.after_comma}/mu-editor_beta#{version.after_comma}_osx.dmg"
  appcast 'https://github.com/mu-editor/mu/releases.atom'
  name 'Mu'
  homepage 'https://codewith.mu/'

  app 'mu-editor.app'
end
