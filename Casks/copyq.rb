cask 'copyq' do
  version '2.9.0'
  sha256 '4b784d3a7edab3fe4883175cd0fad44116e9db444865403ce0e7a08479016dfe'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: '076ee71758e41f3684c5225522c2c14c0c8a0e16ac9d59d8c6e30741a2cdb24c'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
end
