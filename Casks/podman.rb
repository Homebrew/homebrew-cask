cask 'podman' do
  version '1.9.3'
  sha256 '8c5d96ee0a30a3b00dec726d7e660cc75999831a9082325d501b0d25bc347abc'

  url "https://github.com/containers/libpod/releases/download/v#{version}/podman-remote-darwin.zip"
  appcast 'https://github.com/containers/libpod/releases.atom'
  name 'podman'
  homepage 'https://github.com/containers/libpod/'

  binary 'podman-remote-darwin/podman'

  postflight do
    man1 = Dir["#{staged_path}/podman-remote-darwin/docs/*.1"]
    FileUtils.mv(man1, "#{HOMEBREW_PREFIX}/share/man/man1/")

    man5 = Dir["#{staged_path}/podman-remote-darwin/docs/*.5"]
    FileUtils.mkdir("#{HOMEBREW_PREFIX}/share/man/man5/") unless File.exist?("#{HOMEBREW_PREFIX}/share/man/man5/")
    FileUtils.mv(man5, "#{HOMEBREW_PREFIX}/share/man/man5/")
  end

  uninstall_postflight do
    man1 = Dir["#{HOMEBREW_PREFIX}/share/man/man1/podman*.1"]
    FileUtils.rm(man1)

    man5 = Dir["#{HOMEBREW_PREFIX}/share/man/man5/podman*.5"]
    FileUtils.rm(man5)
  end

  zap trash: '~/.config/containers/podman-remote.config'
end
