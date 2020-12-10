cask "docker" do
  if MacOS.version <= :el_capitan
    version "18.06.1-ce-mac73,26764"
    sha256 "3429eac38cf0d198039ad6e1adce0016f642cdb914a34c67ce40f069cdb047a5"
  else
    version "3.0.0,50684"
    sha256 "d2d531b51dd5123315da1220fe508bcbc9ee6ddd5e6d61a905ceca0714cd4ec8"
  end

  url "https://desktop.docker.com/mac/stable/#{version.after_comma}/Docker.dmg"
  appcast "https://desktop.docker.com/mac/stable/appcast.xml"
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
