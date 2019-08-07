cask 'podman' do
  version '1.4.2'
  sha256 '73850911bb49f2e0a970ff44f785634e2aa9a7a1f20845ff508bdccbead17444'

  url "https://github.com/containers/libpod/releases/download/v#{version}/podman-v#{version}.dmg"
  appcast 'https://github.com/containers/libpod/releases.atom'
  name 'podman'
  homepage 'https://github.com/containers/libpod/'

  binary 'podman'
end
