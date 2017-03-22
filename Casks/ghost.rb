cask 'ghost' do
  version '1.2.1'
  sha256 'a40c46a597160cdb253bfa2866e3047eb2e4c132622597fd23f6e1be3ed7ebb7'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: '953c3c8e1a653d5205abf0a6aeca082183de45a31a5e589a649be5605c3e2b22'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads/'

  app 'Ghost.app'
end
