cask "flox" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.3.8"
  sha256 arm:   "f3315ee9fbda7f8f6db04b9c4d4b3dd641c05a7cb8debc12420ecca249fa6c71",
         intel: "78fdc76342af89f931db22742193f6579175a87be669cd59387121ca3e35a83c"

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
