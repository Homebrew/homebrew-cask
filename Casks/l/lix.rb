cask "lix" do
  version :latest
  sha256 :no_check

  url "https://install.lix.systems/lix"
  name "lix"
  desc "Is an implementation of the Nix functional package management language"
  homepage "https://lix.systems/"

  depends_on macos: ">= :sequoia"

  installer script: {
    executable: "lix",
    args:       ["install", "--no-confirm"],
    sudo:       true,
  }

  uninstall launchctl: "org.nixos.nix-daemon",
            script:    {
              executable: "/nix/nix-installer",
              args:       ["uninstall", "--no-confirm"],
              sudo:       true,
            }

  zap trash: [
    "~/.cache/nix",
    "~/.local/state/nix",
    "~/.nix-channels",
    "~/.nix-defexpr",
    "~/.nix-profile",
  ]

  caveats "See https://lix.systems/install/ for update instructions"
end
