cask "flox" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "9148cba43e87e9668756b6c6da3acb357520431df0c7b8ab70b4aab4b6cbbe49",
         intel: "7ab0a860f11be1ca5f6be59ae136115d507596601c283d18586da8a02e9b034c"

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
