cask 'podman' do
  version '1.5.0'
  sha256 '4220d1e513bb2ae7833a7941d140e6c1bbd6e98c8258e766d890cdf3ba6df73b'

  url "https://github.com/containers/libpod/releases/download/v#{version}/podman-v#{version}.tar.gz"
  appcast 'https://github.com/containers/libpod/releases.atom'
  name 'podman'
  homepage 'https://github.com/containers/libpod/'

  binary 'brew/podman'
end
