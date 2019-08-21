cask 'podman' do
  version '1.5.1'
  sha256 'f314e9ef5c77d08dfbd0d9a022e45293570bdec91c56f1200e202c8b9379258e'

  url "https://github.com/containers/libpod/releases/download/v#{version}/podman-v#{version}.tar.gz"
  appcast 'https://github.com/containers/libpod/releases.atom'
  name 'podman'
  homepage 'https://github.com/containers/libpod/'

  binary 'brew/podman'

  postflight do
    man1 = Dir["#{staged_path}/brew/docs/*.1"]
    FileUtils.mv(man1, "#{HOMEBREW_PREFIX}/share/man/man1/")

    man5 = Dir["#{staged_path}/brew/docs/*.5"]
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
