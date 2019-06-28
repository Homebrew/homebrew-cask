cask 'osctl' do
  version '0.1.0-beta.0'
  sha256 'a15115fe028365ca5c64d769288e8e8c1544bad6bfaaf18a16d5210246540c4c'

  url "https://github.com/talos-systems/talos/releases/download/v#{version}/osctl-darwin-amd64"
  appcast 'https://github.com/talos-systems/talos/releases.atom'
  name 'osctl'
  homepage 'https://github.com/talos-systems/talos'

  binary 'osctl-darwin-amd64', target: 'osctl'
end
