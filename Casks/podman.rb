cask 'podman' do
  version '1.6.0-28-gdac7889d'
  sha256 '10aa54e65084a6db98aa46b90fdcdec7b4ae0eb5d241e65dd360859e43bb1236'

  url "https://github.com/containers/libpod/releases/download/v#{version.major_minor_patch}/podman-remote-v#{version}-master-darwin-amd64.tgz"
  appcast 'https://github.com/containers/libpod/releases.atom'
  name 'podman'
  homepage 'https://github.com/containers/libpod/'

  binary "podman-v#{version}/podman"

  postflight do
    man1 = Dir["#{staged_path}/podman-*/docs/*.1"]
    FileUtils.mv(man1, "#{HOMEBREW_PREFIX}/share/man/man1/")

    man5 = Dir["#{staged_path}/podman-*/docs/*.5"]
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
