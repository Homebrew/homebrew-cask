cask 'podman' do
  version '2.0.3'
  sha256 '9231c305c4e8c7374863c7377ac38a493e06fef09cea3bba975694941ae8dce3'

  url "https://github.com/containers/podman/releases/download/v#{version}/podman-remote-release-darwin.zip"
  appcast 'https://github.com/containers/podman/releases.atom'
  name 'podman'
  homepage 'https://github.com/containers/podman/'

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

  zap trash: '~/.config/containers'
end
