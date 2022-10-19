cask "docker" do
  arch arm: "arm64", intel: "amd64"

  version "4.13.0,89412"
  sha256 arm:   "f33037ef7b02946d5714012398848654bd7a759ee729b0346acc46a8e73a76ed",
         intel: "5a9e7b810bc9937a0945f9cbbb7ec00c2c5c386b5897c59c1c93187eaf0f2081"

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
