cask :v1 => 'syncthing' do
  version '0.11.10'
  appcast 'https://github.com/syncthing/syncthing/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net'
  license :mpl

  if Hardware::CPU.is_32_bit?
    url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-386-v#{version}.tar.gz"
    sha256 'd6267d310ce7eca5930ac741cc0a2bdc0967578f1b682940eebbc2eabc007541'
    binary "syncthing-macosx-386-v#{version}/syncthing"
  else
    url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
    sha256 '7454845c79a054d401dbe550d6a2f01c37234f9b91c1f66244d405c184b043a0'
    binary "syncthing-macosx-amd64-v#{version}/syncthing"
  end

  zap :delete => '~/Library/Application Support/Syncthing'
end
