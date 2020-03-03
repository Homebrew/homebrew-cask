cask 'aleth' do
  version '1.8.0'
  sha256 'd45c7df4388bb181412512b14426413719396d63a85f875099f33b799f84f32f'

  url "https://github.com/ethereum/aleth/releases/download/v#{version}/aleth-#{version}-darwin-x86_64.tar.gz"
  appcast 'https://github.com/ethereum/aleth/releases.atom'
  name 'Aleth'
  homepage 'https://github.com/ethereum/aleth'

  binary "aleth-#{version}-darwin-x86_64/bin/aleth"
  binary "aleth-#{version}-darwin-x86_64/bin/aleth-bootnode"
  binary "aleth-#{version}-darwin-x86_64/bin/aleth-key"
  binary "aleth-#{version}-darwin-x86_64/bin/aleth-vm"
  binary "aleth-#{version}-darwin-x86_64/bin/testeth"
end
