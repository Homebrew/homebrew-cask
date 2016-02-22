cask 'brave' do
  version '0.7.14dev'
  sha256 '76554a05f87d4caecc84c564b4cc5535db378f00d5b1c46114afd58558e20542'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'e4cf9fadcd30cf5d4171a905b634773c5a07890fb7e0b5cf2b6eee7e1ee69c7f'
  name 'Brave'
  homepage 'http://brave.com'
  license :mpl

  app 'Brave.app'
end
