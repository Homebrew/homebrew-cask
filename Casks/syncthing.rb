cask :v1 => 'syncthing' do
  version '0.11.19'
  appcast 'https://github.com/syncthing/syncthing/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net'
  license :mpl

  if Hardware::CPU.is_32_bit?
    url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-386-v#{version}.tar.gz"
    sha256 '5c2cfd70252c36082495acaaf7b7eaa976803f53a264a971903d5d3fedab1689'
    binary "syncthing-macosx-386-v#{version}/syncthing"
  else
    url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
    sha256 'adeac70b7caabcb74d93e40e6a6522830c156482e03b04867c9dab8461e7bb1b'
    binary "syncthing-macosx-amd64-v#{version}/syncthing"
  end

  zap :delete => '~/Library/Application Support/Syncthing'
end
