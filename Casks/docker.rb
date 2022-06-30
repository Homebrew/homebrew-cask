cask "docker" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "4.9.1,81317"

  if Hardware::CPU.intel?
    sha256 "c43b43b8a24165df9ac96c7072782d9b283d63df3963237f94ab9fc494fa6d55"
  else
    sha256 "186a77b9ff2958253c5aad07db0e00e12864c492a6aaa653744401182cd94138"
  end

  url "https://desktop.docker.com/mac/main/#{arch}/#{version.csv.second}/Docker.dmg"
  name "Docker Desktop"
  name "Docker Community Edition"
  name "Docker CE"
  desc "App to build and share containerized applications and microservices"
  homepage "https://www.docker.com/products/docker-desktop"

  livecheck do
    url "https://desktop.docker.com/mac/main/#{arch}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with formula: %w[
    docker
    docker-completion
    docker-compose
    docker-compose-completion
    docker-credential-helper-ecr
    hyperkit
    kubernetes-cli
  ]

  app "Docker.app"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/docker"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker-compose.bash-completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/docker-compose"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/_docker",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_docker"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_docker_compose"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/docker.fish"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker-compose.fish-completion",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/docker-compose.fish"

  uninstall delete:    [
              "/Library/PrivilegedHelperTools/com.docker.vmnetd",
              "/usr/local/bin/com.docker.cli",
              "/usr/local/bin/docker-compose-v1",
              "/usr/local/bin/docker-compose",
              "/usr/local/bin/docker-credential-desktop",
              "/usr/local/bin/docker-credential-ecr-login",
              "/usr/local/bin/docker-credential-osxkeychain",
              "/usr/local/bin/docker",
              "/usr/local/bin/hub-tool",
              "/usr/local/bin/hyperkit",
              "/usr/local/bin/kubectl.docker",
              "/usr/local/bin/kubectl",
              "/usr/local/bin/notary",
              "/usr/local/bin/vpnkit",
              "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_docker",
              "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_docker_compose",
              "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/docker.fish",
              "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/docker-compose.fish",
              "#{HOMEBREW_PREFIX}/etc/bash_completion.d/docker",
              "#{HOMEBREW_PREFIX}/etc/bash_completion.d/docker-compose",
            ],
            launchctl: [
              "com.docker.helper",
              "com.docker.vmnetd",
            ],
            quit:      "com.docker.docker"

  zap trash: [
        "/usr/local/bin/docker-compose.backup",
        "/usr/local/bin/docker.backup",
        "~/.docker",
        "~/Library/Application Scripts/com.docker.helper",
        "~/Library/Application Support/com.bugsnag.Bugsnag/com.docker.docker",
        "~/Library/Application Support/Docker Desktop",
        "~/Library/Caches/com.docker.docker",
        "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.docker.docker",
        "~/Library/Caches/KSCrashReports/Docker",
        "~/Library/Containers/com.docker.docker",
        "~/Library/Containers/com.docker.helper",
        "~/Library/Group Containers/group.com.docker",
        "~/Library/HTTPStorages/com.docker.docker.binarycookies",
        "~/Library/Logs/Docker Desktop",
        "~/Library/Preferences/com.docker.docker.plist",
        "~/Library/Preferences/com.electron.docker-frontend.plist",
        "~/Library/Preferences/com.electron.dockerdesktop.plist",
        "~/Library/Saved Application State/com.electron.docker-frontend.savedState",
        "~/Library/Saved Application State/com.electron.dockerdesktop.savedState",
      ],
      rmdir: [
        "~/Library/Caches/com.plausiblelabs.crashreporter.data",
        "~/Library/Caches/KSCrashReports",
      ]
end
