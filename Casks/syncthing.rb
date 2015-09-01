cask :v1 => 'syncthing' do
  version '0.11.23'
  sha256 '955a4ba6cf030078518ecd918e98c17a617e99dbfacd47f1924584f0c507eee5'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
