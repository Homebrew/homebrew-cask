cask :v1 => 'syncthing' do
  version '0.11.13'
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
    sha256 '2ddf74aff5f3d68a903ac52459ece73dc5161f49e5df675f47b9c7b1e12a7e5e'
    binary "syncthing-macosx-amd64-v#{version}/syncthing"
  end

  zap :delete => '~/Library/Application Support/Syncthing'
end
