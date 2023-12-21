cask "docker" do
  arch arm: "arm64", intel: "amd64"

  on_intel do
    binary "Docker.app/Contents/Resources/bin/com.docker.hyperkit",
           target: "/usr/local/bin/hyperkit"
  end
  on_catalina :or_older do
    version "4.15.0,93002"
    sha256 arm:   "fc8609d57fb8c8264122f581c0f66497e46e171f8027d85d90213527d6226362",
           intel: "bee41d646916e579b16b7fae014e2fb5e5e7b5dbaf7c1949821fd311d3ce430b"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :catalina"
  end
  on_big_sur do
    version "4.24.2,124339"
    sha256 arm:   "fec5b7f8f38b7cbec3a654b01fcc1828b4dbaa3875033adab20a88fa9ad4c7c4",
           intel: "0bedaa13c4e8870b55250162def44cafba65d857c265f1f7488d8326ec386f71"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: :big_sur
  end
  on_monterey :or_newer do
    version "4.26.1,131620"
    sha256 arm:   "67f026d3154dbd393ff983a904037b7f59697c75880a53bf63fa1a02fec8c8b3",
           intel: "617e07f04cd8a337c189efcfc05109fc9ef83c313ea101c520593c79c36697cf"

    livecheck do
      url "https://desktop.docker.com/mac/main/#{arch}/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: ">= :monterey"
  end

  url "https://desktop.docker.com/mac/main/#{arch}/#{version.csv.second}/Docker.dmg"
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
    docker-credential-helper-ecr
  ]

  app "Docker.app"
  binary "Docker.app/Contents/Resources/bin/com.docker.cli",
         target: "/usr/local/bin/com.docker.cli"
  binary "Docker.app/Contents/Resources/bin/docker",
         target: "/usr/local/bin/docker"
  binary "Docker.app/Contents/Resources/bin/docker-compose",
         target: "/usr/local/bin/docker-compose"
  binary "Docker.app/Contents/Resources/bin/docker-credential-desktop",
         target: "/usr/local/bin/docker-credential-desktop"
  binary "Docker.app/Contents/Resources/bin/docker-credential-ecr-login",
         target: "/usr/local/bin/docker-credential-ecr-login"
  binary "Docker.app/Contents/Resources/bin/docker-credential-osxkeychain",
         target: "/usr/local/bin/docker-credential-osxkeychain"
  binary "Docker.app/Contents/Resources/bin/docker-index",
         target: "/usr/local/bin/docker-index"
  binary "Docker.app/Contents/Resources/bin/hub-tool",
         target: "/usr/local/bin/hub-tool"
  binary "Docker.app/Contents/Resources/bin/kubectl",
         target: "/usr/local/bin/kubectl.docker"
  binary "Docker.app/Contents/Resources/etc/docker.bash-completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/docker"
  binary "Docker.app/Contents/Resources/etc/docker.zsh-completion",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_docker"
  binary "Docker.app/Contents/Resources/etc/docker.fish-completion",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/docker.fish"

  postflight do
    kubectl_target = Pathname("/usr/local/bin/kubectl")

    # Only link if `kubernetes-cli` is not installed.
    next if kubectl_target.exist?

    system_command "/bin/ln", args: ["-sfn", staged_path/"Docker.app/Contents/Resources/bin/kubectl", kubectl_target],
                              sudo: !kubectl_target.dirname.writable?
  end

  uninstall_postflight do
    kubectl_target = Pathname("/usr/local/bin/kubectl")

    if kubectl_target.symlink? && kubectl_target.readlink == staged_path/"Docker.app/Contents/Resources/bin/kubectl"
      system_command "/bin/rm", args: [kubectl_target],
                                sudo: !kubectl_target.dirname.writable?
    end
  end

  uninstall launchctl: [
              "com.docker.helper",
              "com.docker.socket",
              "com.docker.vmnetd",
            ],
            quit:      "com.docker.docker",
            delete:    [
              "/Library/PrivilegedHelperTools/com.docker.socket",
              "/Library/PrivilegedHelperTools/com.docker.vmnetd",
            ],
            rmdir:     "~/.docker/bin"

  zap trash: [
        "/usr/local/bin/docker-compose.backup",
        "/usr/local/bin/docker.backup",
        "~/.docker",
        "~/Library/Application Scripts/com.docker.helper",
        "~/Library/Application Scripts/group.com.docker",
        "~/Library/Application Support/com.bugsnag.Bugsnag/com.docker.docker",
        "~/Library/Application Support/Docker Desktop",
        "~/Library/Caches/com.docker.docker",
        "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.docker.docker",
        "~/Library/Caches/KSCrashReports/Docker",
        "~/Library/Containers/com.docker.docker",
        "~/Library/Containers/com.docker.helper",
        "~/Library/Group Containers/group.com.docker",
        "~/Library/HTTPStorages/com.docker.docker",
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
