cask :v1 => 'syncthing' do
  version '0.11.11'
  appcast 'https://github.com/syncthing/syncthing/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net'
  license :mpl

  if Hardware::CPU.is_32_bit?
    url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-386-v#{version}.tar.gz"
    sha256 '28a594aa2248e5750f0ee163a5a02b55c1c3d8eb58230b2c0ae36cec396b4432'
    binary "syncthing-macosx-386-v#{version}/syncthing"
  else
    url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
    sha256 '5e3ccbdba35a8ccbdc926f309fd84843a45e5edd65636693d1bee0017f19d7b8'
    binary "syncthing-macosx-amd64-v#{version}/syncthing"
  end

  zap :delete => '~/Library/Application Support/Syncthing'
end
