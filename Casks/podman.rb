cask 'podman' do
  version '1.3.1'
  sha256 '438f7788fe28e88ae800e99896eb42a07775682e4bc69a2f618fc2c36c8a4a21'

  url 'https://github.com/containers/libpod/releases/download/v1.3.1/podman-v1.3.1.dmg'
  appcast 'https://github.com/containers/libpod/releases.atom'
  name 'podman'
  homepage 'https://github.com/containers/libpod/'

  app 'podman'
  binary "#{appdir}/podman"
end
