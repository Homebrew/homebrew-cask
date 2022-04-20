cask "docker-desktop" do
  version "4.7.1"

  name "Docker Desktop for Mac"
  homepage "https://docs.docker.com/desktop/"

  if Hardware::CPU.Intel?
    url "https://desktop.docker.com/mac/main/amd64/Docker.dmg"
    sha256 "194bb59c7015ddea680993be42ee572ccd1a7e4b7f8f00293fa398b98f2926aa"
  else
    url "https://desktop.docker.com/mac/main/arm64/Docker.dmg"
    sha256 "ce5aea6a2c30c10a81b9768cfe09c24d4e33a36d355b3703d590ca6c4498e73f"
  end

  conflicts_with cask: "docker-edge"
  depends_on macos: ">= :catalina"

  app "Docker.app"

  # def install
  #  system "hdiutil", "attach", "Docker.dmg"
  #  system "/Volumes/Docker/Docker.app/Contents/MacOS/install", "--accept-license"
  #  system "hdiutil", "detach", "/Volumes/Docker"
  # end

  uninstall delete:    [
    "/Library/PrivilegedHelperTools/com.docker.vmnetd",
    "/private/var/tmp/com.docker.vmnetd.socket",
    "/usr/local/bin/docker",
    "/usr/local/bin/docker-compose",
    "/usr/local/bin/docker-credential-desktop",
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
  ]
end
