cask 'podman' do
  version '2.0.0'
  sha256 '217d9ca76666ee1e91bb9a76308a9bbfd1bfb4a698fef0ebf9a60b68a7313e04'

  url "https://github.com/containers/libpod/releases/download/v#{version}/podman-remote-release-darwin.zip"
  appcast 'https://github.com/containers/libpod/releases.atom'
  name 'podman'
  homepage 'https://github.com/containers/libpod/'

  binary 'podman-remote-release-darwin/podman'

  postflight do
    man1 = Dir["#{staged_path}/podman-remote-release-darwin/docs/*.1"]
    FileUtils.mv(man1, "#{HOMEBREW_PREFIX}/share/man/man1/")

    man5 = Dir["#{staged_path}/podman-remote-release-darwin/docs/*.5"]
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
