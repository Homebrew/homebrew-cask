cask 'podman' do
  version '2.0.2'
  sha256 '5ae54572d791b1a0f22090c5873ba288c777564d0ea4c23c0a32e3708819c0dc'

  url "https://github.com/containers/libpod/releases/download/v#{version}/podman-remote-release-darwin.zip"
  appcast 'https://github.com/containers/libpod/releases.atom'
  name 'podman'
  homepage 'https://github.com/containers/libpod/'

  binary 'podman'

  postflight do
    man1 = Dir["#{staged_path}/docs/*.1"]
    FileUtils.mv(man1, "#{HOMEBREW_PREFIX}/share/man/man1/")

    FileUtils.mkdir_p "#{ENV['HOME']}/.config/containers"
    FileUtils.mv("#{staged_path}/containers.conf", "#{ENV['HOME']}/.config/containers/containers.conf") unless File.exist?("#{ENV['HOME']}/.config/containers/containers.conf")
  end

  uninstall_postflight do
    man1 = Dir["#{HOMEBREW_PREFIX}/share/man/man1/podman*.1"]
    FileUtils.rm(man1)
  end

  zap trash: "#{ENV['HOME']}/.config/containers"
end
