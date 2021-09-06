cask "linkliar" do
  if MacOS.version <= :el_capitan
    version "1.1.3"
    sha256 "34c9baeaf1d6732c8ce9add689b281f9b71fddadd8f56cca614cba4f8c167962"
  else
    version "2.1.1"
    sha256 "58cd56b7f53039d7c608bd4a6c5e6fcf2ade63c4a3e99df0510a4838c5ec57b0"
  end

  url "https://github.com/halo/LinkLiar/releases/download/#{version}/LinkLiar.app.zip"
  name "LinkLiar"
  desc "Link-Layer MAC spoofing GUI for macOS"
  homepage "https://github.com/halo/LinkLiar"

  app "LinkLiar.app"

  uninstall delete:    [
    "/Library/Application Support/LinkDaemon",
    "/Library/Application Support/LinkLiar",
  ],
            launchctl: [
              "io.github.halo.linkdaemon",
              "io.github.halo.linkhelper",
            ],
            quit:      "io.github.halo.LinkLiar"
end
