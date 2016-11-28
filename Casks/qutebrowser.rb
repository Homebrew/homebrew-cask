cask 'qutebrowser' do
  version '0.8.4'
  sha256 '2563a0f0152848b3e9eebe98746c34c1c3d9245bfc1540073d2707424fa7b64c'

  # github.com/The-Compiler/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/The-Compiler/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/The-Compiler/qutebrowser/releases.atom',
          checkpoint: 'ff2f6eadfe8540a0cb51f3852ce60769f5b7505f07f1b07bdfcee8affffdd9cc'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'
end
