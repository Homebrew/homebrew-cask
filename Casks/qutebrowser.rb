cask 'qutebrowser' do
  version '0.10.1'
  sha256 '1160cd7553fa1304a4c437e3b08004115399e034ecb92db710d96523afeaae0a'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom',
          checkpoint: '0e7edb3eb9988922c7d30fa64606db787e981c52a0b780d0e6b4c06abcf94327'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'
end
