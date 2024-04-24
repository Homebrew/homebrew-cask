cask "flox" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.4"
  sha256 arm:   "3be4ddc0de9c2ccb84d441fdc68eb48d524cae160f8e3ce13611617d70265280",
         intel: "c8cba8428203597c576c23e8e00b982a5aaafe85ceb8a59aa55d960ea497ddc6"

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
