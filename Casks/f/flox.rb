cask "flox" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.19.2"
  sha256 arm:   "46e05e2c8e5c8afed9e02fdcbca58dd8a2dfe1bc4f4a29a29bfebf7b5be590cb",
         intel: "b3f84fc368e7fd962c6520c85b7091efbb192048aed3b7a568751f6c2c4402a1"

  url "https://downloads.flox.dev/by-env/stable/osx/flox-#{version}.#{arch}-darwin.pkg"
  name "flox"
  desc "Manages environments across the software lifecycle"
  homepage "https://flox.dev/"

  livecheck do
    url "https://downloads.flox.dev/by-env/stable/LATEST_VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

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
        "~/.local/share/flox",
        "~/.local/state/flox",
      ]
end
