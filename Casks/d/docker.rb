cask "docker" do
  arch arm: "arm64", intel: "amd64"

  version "4.41.1,191279"
  sha256 arm:   "104e7c7cfa9e5f77aed50340f3795eaeac0dd0bd04f0eb4e297d1a194084aa3c",
         intel: "698aa8ee3cb63e21bd47c03283bc0b6345b9036a5791f3616aca84f5a1af6d25"

  on_intel do
    binary "Docker.app/Contents/Resources/bin/com.docker.hyperkit",
           target: "/usr/local/bin/hyperkit"
  end

  url "https://desktop.docker.com/mac/main/#{arch}/#{version.csv.second}/Docker.dmg"
  name "Docker Desktop"
  name "Docker Community Edition"
  name "Docker CE"
  desc "App to build and share containerised applications and microservices"
  homepage "https://www.docker.com/products/docker-desktop"

  livecheck do
    url "https://desktop.docker.com/mac/main/#{arch}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask:    "rancher",
                 formula: %w[
                   docker
                   docker-completion
                   docker-compose
                   docker-credential-helper-ecr
                 ]
  depends_on macos: ">= :monterey"

  app "Docker.app"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker-compose.bash-completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/docker-compose"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_docker-compose"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker-compose.fish-completion",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/docker-compose.fish"
  binary "#{appdir}/Docker.app/Contents/Resources/bin/compose-bridge",
         target: "/usr/local/bin/compose-bridge"
  binary "#{appdir}/Docker.app/Contents/Resources/bin/docker",
         target: "/usr/local/bin/docker"
  binary "#{appdir}/Docker.app/Contents/Resources/bin/docker-credential-desktop",
         target: "/usr/local/bin/docker-credential-desktop"
  binary "#{appdir}/Docker.app/Contents/Resources/bin/docker-credential-ecr-login",
         target: "/usr/local/bin/docker-credential-ecr-login"
  binary "#{appdir}/Docker.app/Contents/Resources/bin/docker-credential-osxkeychain",
         target: "/usr/local/bin/docker-credential-osxkeychain"
  binary "#{appdir}/Docker.app/Contents/Resources/bin/hub-tool",
         target: "/usr/local/bin/hub-tool"
  binary "#{appdir}/Docker.app/Contents/Resources/bin/kubectl",
         target: "/usr/local/bin/kubectl.docker"
  binary "#{appdir}/Docker.app/Contents/Resources/cli-plugins/docker-compose",
         target: "/usr/local/cli-plugins/docker-compose"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker.bash-completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/docker"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker.zsh-completion",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_docker"
  binary "#{appdir}/Docker.app/Contents/Resources/etc/docker.fish-completion",
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
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.docker.helper.sfl*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.dockerdesktop.sfl*",
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
