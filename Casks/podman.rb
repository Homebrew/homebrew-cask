cask "podman" do
  version "2.0.5"
  sha256 "d178936b8f768676e17d2ac9bd8bea739c45988c97fd98aace3506655bfab056"

  url "https://github.com/containers/podman/releases/download/v#{version}/podman-remote-release-darwin.zip"
  appcast "https://github.com/containers/podman/releases.atom"
  name "podman"
  homepage "https://github.com/containers/podman/"

  binary "podman"

  postflight do
    man1 = Dir["#{staged_path}/docs/*.1"]
    FileUtils.mv(man1, "#{HOMEBREW_PREFIX}/share/man/man1/")

    FileUtils.mkdir_p "#{ENV["HOME"]}/.config/containers"
    unless File.exist?("#{ENV["HOME"]}/.config/containers/containers.conf")
      FileUtils.mv("#{staged_path}/containers.conf", "#{ENV["HOME"]}/.config/containers/containers.conf")
    end
  end

  uninstall_postflight do
    man1 = Dir["#{HOMEBREW_PREFIX}/share/man/man1/podman*.1"]
    FileUtils.rm(man1)
  end

  zap trash: "~/.config/containers"
end
