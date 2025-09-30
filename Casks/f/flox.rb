cask "flox" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.4"
  sha256 arm:   "8a05c4c136e63ef65077f68619976254f3b515928c6e0645c80c374d1b07caff",
         intel: "3d3150935bd72ebf5d9b9ffdad14f9cb9074f8da41a743731b34fa5a252ee5fb"

  url "https://downloads.flox.dev/by-env/stable/osx/flox-#{version}.#{arch}-darwin.pkg"
  name "flox"
  desc "Manages environments across the software lifecycle"
  homepage "https://flox.dev/"

  livecheck do
    url "https://downloads.flox.dev/by-env/stable/LATEST_VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  pkg "flox-#{version}.#{arch}-darwin.pkg"

  uninstall launchctl: [
              "org.nixos.darwin-store",
              "org.nixos.nix-daemon",
            ],
            quit:      [
              "org.nixos.darwin-store",
              "org.nixos.nix-daemon",
            ],
            script:    {
              executable: "/usr/local/share/flox/scripts/uninstall",
              sudo:       true,
            },
            pkgutil:   "com.floxdev.flox"

  zap script: {
        executable: "/usr/local/share/flox/scripts/uninstall_zap",
        args:       ["--zap"],
        sudo:       true,
      },
      trash:  [
        "/etc/flox-version.update",
        "/etc/nix/nix.conf.bak",
        "/usr/local/share/flox/scripts/uninstall_zap",
        "~/.cache/flox",
        "~/.config/flox",
      ]
end
