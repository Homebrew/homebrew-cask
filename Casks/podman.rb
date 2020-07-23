cask 'podman' do
  version '2.0.3'
  sha256 '789f1719727d4e6b43813f8b2561e19ec669f627d1b794246b44393627c0f674'

  url "https://github.com/containers/podman/releases/download/v#{version}/podman-remote-release-darwin.zip"
  appcast 'https://github.com/containers/podman/releases.atom'
  name 'podman'
  homepage 'https://github.com/containers/podman/'

  binary 'podman'

  postflight do
    man1 = Dir["#{staged_path}/docs/*.1"]
    FileUtils.mv(man1, "#{HOMEBREW_PREFIX}/share/man/man1/")
  end

  uninstall_postflight do
    man1 = Dir["#{HOMEBREW_PREFIX}/share/man/man1/podman*.1"]
    FileUtils.rm(man1)
  end

  zap trash: '~/.config/containers'
end
