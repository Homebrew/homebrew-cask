cask 'qutebrowser' do
  version '0.8.1'
  sha256 'e9541a90ad411be95e568ff16bcd083cf43496816bf41ee4ddc10e9fe808464c'

  # github.com/The-Compiler/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/The-Compiler/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'
  license :gpl

  app 'qutebrowser.app'
end
