cask "linkliar" do
  version "3.0.3"
  sha256 "36e62eab4ef8d2b004c6886182fc49830afdf56f4f14f9be07adfe552d7140d2"

  url "https://github.com/halo/LinkLiar/releases/download/#{version}/LinkLiar.app.zip"
  name "LinkLiar"
  desc "Link-Layer MAC spoofing GUI for macOS"
  homepage "https://github.com/halo/LinkLiar"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "LinkLiar.app"

  uninstall launchctl: [
              "io.github.halo.linkdaemon",
              "io.github.halo.linkhelper",
            ],
            quit:      "io.github.halo.LinkLiar",
            delete:    [
              "/Library/Application Support/io.github.halo.linkdaemon",
              "/Library/Application Support/LinkLiar",
            ]

  # No zap stanza required
end
