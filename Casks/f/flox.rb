cask "flox" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.7"
  sha256 arm:   "edf19cd669c9a38e3e021dece3a8aaffb2049149fabca16a55fc401e98b48974",
         intel: "e6111d522ab692be463a83e0e377c9035b1a5d02d6ac9f73a56c525c6e54ba0f"

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
