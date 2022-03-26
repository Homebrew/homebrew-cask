cask "rancher" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "1.2.1"

  if Hardware::CPU.intel?
    sha256 "00f2c92da9a715ceb0c4e3b58dffe3a346c78ac7ed07564e1a6254c719149c21"
  else
    sha256 "bf883dd850e4386c732b32f033129076146580f6c3a7c410fe177cd1d17830a0"
  end

  url "https://github.com/rancher-sandbox/rancher-desktop/releases/download/v#{version}/Rancher.Desktop-#{version}.#{arch}.dmg",
      verified: "github.com/rancher-sandbox/rancher-desktop/"
  name "Rancher Desktop"
  desc "Kubernetes and container management on the desktop"
  homepage "https://rancherdesktop.io/"

  auto_updates true
  conflicts_with cask:    %w[
    docker
  ],
                 formula: %w[
                   docker
                   helm
                   kubernetes-cli
                 ]

  app "Rancher Desktop.app"

  uninstall delete: [
    "/opt/rancher-desktop",
    "/private/etc/sudoers.d/zzzzz-rancher-desktop-lima", # zzzzz is not a typo
    "/private/var/run/docker.sock",
    "/private/var/run/rancher-desktop-*",
    "/usr/local/bin/docker",
    "/usr/local/bin/helm",
    "/usr/local/bin/kubectl",
    "/usr/local/bin/nerdctl",
    "/usr/local/bin/rdctl",
  ],
            quit:   "io.rancherdesktop.app"

  zap trash: [
    "~/.kuberlr",
    "~/Library/Application Support/Caches/rancher-desktop-updater",
    "~/Library/Application Support/Rancher Desktop",
    "~/Library/Application Support/rancher-desktop",
    "~/Library/Caches/io.rancherdesktop.app*",
    "~/Library/Caches/rancher-desktop",
    "~/Library/Logs/rancher-desktop",
    "~/Library/Preferences/ByHost/io.rancherdesktop.app*",
    "~/Library/Preferences/io.rancherdesktop.app.plist",
    "~/Library/Preferences/rancher-desktop",
    "~/Library/Saved Application State/io.rancherdesktop.app.savedState",
  ]
end
