cask 'podman' do
  version '1.9.3'
  sha256 '221bab2f343252aaa465712a3873faad958f24bd66436ba09c36e329a74de030'

  url "https://github.com/containers/libpod/releases/download/v#{version}/podman-remote-darwin.tar.gz"
  appcast 'https://github.com/containers/libpod/releases.atom'
  name 'podman'
  homepage 'https://github.com/containers/libpod/'

  binary 'podman-remote-darwin'

  zap trash: '~/.config/containers/podman-remote.config'
end
