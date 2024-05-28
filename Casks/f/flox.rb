cask "flox" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.6"
  sha256 arm:   "2455534134ebbd1b19f6f8e3a733b3f739909f84ce355e40aa8ca20a53ab3116",
         intel: "90f54ca359568f5c8d75e9bb40497ff04346cbdb56ca8e42509247493371277b"

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
