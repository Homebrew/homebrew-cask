cask "docker-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "4.90.0,238679"
  sha256 arm:   "c131ee28ef56248d4abee2268c05235b19216b015ddf632727cef1b95a6f995c",
         intel: "d5c1143655cd2a4cbd674e5a1337762fa34699d541e93c53bde034048f1c74c8"

  on_intel do
    binary "#{appdir}/Docker.app/Contents/Resources/bin/com.docker.hyperkit",
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
  conflicts_with cask: "rancher"
  depends_on macos: :sonoma

  app "Docker.app"
  binary "#{appdir}/Docker.app/Contents/Resources/bin/docker",
         target: "/usr/local/bin/docker"
  binary "#{appdir}/Docker.app/Contents/Resources/bin/docker-credential-desktop",
         target: "/usr/local/bin/docker-credential-desktop"
  binary "#{appdir}/Docker.app/Contents/Resources/bin/docker-credential-ecr-login",
         target: "/usr/local/bin/docker-credential-ecr-login"
  binary "#{appdir}/Docker.app/Contents/Resources/bin/docker-credential-osxkeychain",
         target: "/usr/local/bin/docker-credential-osxkeychain"
  binary "#{appdir}/Docker.app/Contents/Resources/bin/kubectl",
         target: "/usr/local/bin/kubectl.docker"
  binary "#{appdir}/Docker.app/Contents/Resources/cli-plugins/docker-compose",
         target: "/usr/local/cli-plugins/docker-compose"
  bash_completion "#{appdir}/Docker.app/Contents/Resources/etc/docker-compose.bash-completion"
  bash_completion "#{appdir}/Docker.app/Contents/Resources/etc/docker.bash-completion"
  fish_completion "#{appdir}/Docker.app/Contents/Resources/etc/docker-compose.fish-completion"
  fish_completion "#{appdir}/Docker.app/Contents/Resources/etc/docker.fish-completion"
  zsh_completion "#{appdir}/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion"
  zsh_completion "#{appdir}/Docker.app/Contents/Resources/etc/docker.zsh-completion"

  postflight_steps do
    # Only link if `kubernetes-cli` is not installed.
    unless_path_exists "/usr/local/bin/kubectl" do
      symlink "{{appdir}}/Docker.app/Contents/Resources/bin/kubectl", "/usr/local/bin/kubectl",
              remove_on_uninstall: true, sudo: :if_needed, overwrite: true
    end
  end

  uninstall launchctl: [
              "com.docker.helper",
              "com.docker.socket",
              "com.docker.vmnetd",
            ],
            quit:      [
              "com.docker.docker",
              "com.electron.dockerdesktop",
            ],
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
        "~/Library/Application Support/docker-secrets-engine",
        "~/Library/Caches/com.docker.docker",
        "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.docker.docker",
        "~/Library/Caches/Docker Desktop",
        "~/Library/Caches/docker-secrets-engine",
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
