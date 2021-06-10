cask "docker" do
  version "3.4.0,65384"

  if Hardware::CPU.intel?
    sha256 "55e036c4c078a0d1e357d487e7c1a5f13762bfaebace0f9a363ab45f523a828e"

    url "https://desktop.docker.com/mac/stable/amd64/#{version.after_comma}/Docker.dmg"

    livecheck do
      url "https://desktop.docker.com/mac/stable/amd64/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "454fe3310c023f143129d6b343cbf84d5417d1632ad628e0005a47a41d4a3c7b"

    url "https://desktop.docker.com/mac/stable/arm64/#{version.after_comma}/Docker.dmg"

    livecheck do
      url "https://desktop.docker.com/mac/stable/arm64/appcast.xml"
      strategy :sparkle
    end
  end

  name "Docker Desktop"
  name "Docker Community Edition"
  name "Docker CE"
  desc "App to build and share containerized applications and microservices"
  homepage "https://www.docker.com/products/docker-desktop"

  auto_updates true
  conflicts_with formula: %w[
    docker
    docker-completion
    docker-compose
    docker-compose-completion
    hyperkit
    kubernetes-cli
  ]

  app "Docker.app"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker.bash-completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/docker"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker-compose.bash-completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/docker-compose"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker.zsh-completion",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_docker"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_docker_compose"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker.fish-completion",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/docker.fish"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker-compose.fish-completion",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/docker-compose.fish"

  uninstall delete:    [
    "/Library/PrivilegedHelperTools/com.docker.vmnetd",
    "/private/var/tmp/com.docker.vmnetd.socket",
    "/usr/local/bin/docker",
    "/usr/local/bin/docker-compose",
    "/usr/local/bin/docker-credential-desktop",
    "/usr/local/bin/docker-credential-ecr-login",
    "/usr/local/bin/docker-credential-osxkeychain",
    "/usr/local/bin/hyperkit",
    "/usr/local/bin/kubectl",
    "/usr/local/bin/kubectl.docker",
    "/usr/local/bin/notary",
    "/usr/local/bin/vpnkit",
  ],
            launchctl: [
              "com.docker.helper",
              "com.docker.vmnetd",
            ],
            quit:      "com.docker.docker"

  zap trash: [
    "/usr/local/bin/docker-compose.backup",
    "/usr/local/bin/docker.backup",
    "~/Library/Application Support/Docker Desktop",
    "~/Library/Application Scripts/com.docker.helper",
    "~/Library/Caches/KSCrashReports/Docker",
    "~/Library/Caches/com.docker.docker",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.docker.docker",
    "~/Library/Containers/com.docker.docker",
    "~/Library/Containers/com.docker.helper",
    "~/Library/Group Containers/group.com.docker",
    "~/Library/Preferences/com.docker.docker.plist",
    "~/Library/Preferences/com.electron.docker-frontend.plist",
    "~/Library/Saved Application State/com.electron.docker-frontend.savedState",
    "~/Library/Logs/Docker Desktop",
  ],
      rmdir: [
        "~/Library/Caches/KSCrashReports",
        "~/Library/Caches/com.plausiblelabs.crashreporter.data",
      ]
end
