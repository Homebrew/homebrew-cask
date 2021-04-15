cask "docker" do
  if Hardware::CPU.intel?
    version "3.3.0,62916"
    sha256 "d533aa7d4a4a00d49bb78f4488535e577d7674292538c59769daa61e9bff1109"

    url "https://desktop.docker.com/mac/stable/amd64/#{version.after_comma}/Docker.dmg"

    livecheck do
      url "https://desktop.docker.com/mac/stable/amd64/appcast.xml"
      strategy :sparkle
    end
  else
    version "3.3.0,62632"
    sha256 "648e36a83811c7041a97a41c050073b9ec50602c588e692501df2c14ef4b66a3"

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

  app "Docker.app"

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
