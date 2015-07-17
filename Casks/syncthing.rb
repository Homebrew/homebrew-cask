cask :v1 => 'syncthing' do
  version '0.11.15'
  appcast 'https://github.com/syncthing/syncthing/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net'
  license :mpl

  if Hardware::CPU.is_32_bit?
    url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-386-v#{version}.tar.gz"
    sha256 'd67a5329084cf1325a7d296668ef2fc9a47442c0398d54fed3a64e0ef6ff30d4'
    binary "syncthing-macosx-386-v#{version}/syncthing"
  else
    url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
    sha256 '9f8eddc2d5fb66f2b2b4d4dc336192277e5b1e245d9dd3efc54483277fa25e10'
    binary "syncthing-macosx-amd64-v#{version}/syncthing"
  end

  zap :delete => '~/Library/Application Support/Syncthing'
end
