cask "flox" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.3.0"
  sha256 arm:   "37fabc57b7dc5b9095ea990db729c36eb785ddbe778c3ba1873037fb1a79e8a6",
         intel: "170760a36b72591a6fe4c88e3189bb6904ae5eb0a109fb16fcdf3a46c7717254"

  url "https://downloads.flox.dev/by-env/stable/osx/flox-#{version}.#{arch}-darwin.pkg"
  name "flox"
  desc "Manages environments across the software lifecycle"
  homepage "https://flox.dev/"

  livecheck do
    url "https://downloads.flox.dev/by-env/stable/LATEST_VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
