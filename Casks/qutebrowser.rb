cask 'qutebrowser' do
  version '0.8.2'
  sha256 'f8a646191577c2cd8f584ed72dff92381f89c265cd33f825c96183a82d653076'

  # github.com/The-Compiler/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/The-Compiler/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/The-Compiler/qutebrowser/releases.atom',
          checkpoint: 'a72cec31165988a3c8ad50e94818e6da163437f4a2d5f008ff99e4c9cf158740'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'
end
