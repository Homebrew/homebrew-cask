cask "flox" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.3"
  sha256 arm:   "08c5c45ba72809c208405002f0200246fc90fc44cf09ac7298bc2c3258ef3b4f",
         intel: "e03da4432d564fa9099ac256f472885eb8b6ab074b6d6a70378396b2b4641464"

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

  uninstall early_script: {
              executable:   "/usr/bin/killall",
              args:         ["-9", "pkgdb"],
              sudo:         true,
              must_succeed: false,
            },
            launchctl:    [
              "org.nixos.darwin-store",
              "org.nixos.nix-daemon",
            ],
            quit:         [
              "org.nixos.darwin-store",
              "org.nixos.nix-daemon",
            ],
            script:       {
              executable: "/usr/local/share/flox/scripts/uninstall",
              sudo:       true,
            },
            pkgutil:      "com.floxdev.flox"

  zap trash: [
    "~/.cache/flox",
    "~/.config/flox",
  ]
end
