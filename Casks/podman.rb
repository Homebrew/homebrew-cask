cask 'podman' do
  version '2.0.0'
  sha256 'ac759d224ef10f8e28f60c6ee514f716361fe183c236985f552b727b5101e3c7'

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
