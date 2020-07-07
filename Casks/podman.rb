cask 'podman' do
  version '2.0.2'
  sha256 '90e6fc832880323b9069617f9e5b384708be007dbafe50b3270b46923f454209'

  url "https://github.com/containers/libpod/releases/download/v#{version}/podman-remote-release-darwin.zip"
  appcast 'https://github.com/containers/libpod/releases.atom'
  name 'podman'
  homepage 'https://github.com/containers/libpod/'

  binary 'podman'

  postflight do
    man1 = Dir["#{staged_path}/docs/*.1"]
    FileUtils.mv(man1, "#{HOMEBREW_PREFIX}/share/man/man1/")
  end

  uninstall_postflight do
    man1 = Dir["#{HOMEBREW_PREFIX}/share/man/man1/podman*.1"]
    FileUtils.rm(man1)
  end
end
