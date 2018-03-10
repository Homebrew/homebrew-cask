cask 'kactus' do
  version '0.3.2'
  sha256 'f240959b07636fd031ef49e20d9eb3c72bf89d787484316637f461954434f39a'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom',
          checkpoint: '1a65391fa900adccb3e1558ca399fe574b0bfbf07a0240f99cc943cbd20a536f'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end
