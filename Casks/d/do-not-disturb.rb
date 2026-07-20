cask "do-not-disturb" do
  version "2.1.0"
  sha256 "af4a0e55d20ff5a28b5c91a9517f70bdba77c182174c24a93d234347e2885da1"

  url "https://github.com/objective-see/DoNotDisturb/releases/download/v#{version}/DoNotDisturb_#{version}.zip",
      verified: "github.com/objective-see/DoNotDisturb/"
  name "Do Not Disturb"
  desc "Open-source physical access (aka 'evil maid') attack detector"
  homepage "https://objective-see.org/products/dnd.html"

  depends_on :macos

  # the installer is interactive, running the configure script directly doesn't produce a
  # working install.
  installer manual: "DoNotDisturb Installer.app"

  uninstall script: {
    executable: "#{staged_path}/DoNotDisturb Installer.app/Contents/Resources/configure.sh",
    args:       ["-uninstall"],
    sudo:       true,
  }

  # No zap stanza required
end
