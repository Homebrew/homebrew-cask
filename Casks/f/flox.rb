cask "flox" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.11.4"
  sha256 arm:   "5a33b43d49dc6481f5d5a24ad8cd800088e473731f68726e07ae73bed6b03286",
         intel: "3d6c63ad287d502864f6262083087ec3a999c3a79806be94c9e65d1a2865a06f"

  url "https://downloads.flox.dev/by-env/stable/osx/flox-#{version}.#{arch}-darwin.pkg"
  name "flox"
  desc "Manages environments across the software lifecycle"
  homepage "https://flox.dev/"

  livecheck do
    url "https://downloads.flox.dev/by-env/stable/LATEST_VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

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
