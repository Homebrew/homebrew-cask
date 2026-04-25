cask "do-not-disturb" do
  version "2.0.0"
  sha256 "3ea3b66705e2a373c734435981e74908361cfcd0957591d9e0aa8ac94df2cf2f"

  url "https://github.com/objective-see/DoNotDisturb/releases/download/v#{version}/DoNotDisturb_#{version}.zip",
      verified: "github.com/objective-see/DoNotDisturb/"
  name "Do Not Disturb"
  desc "Open-source physical access (aka 'evil maid') attack detector"
  homepage "https://objective-see.org/products/dnd.html"

  depends_on :macos

  installer script: {
    executable: "#{staged_path}/DoNotDisturb Installer.app/Contents/MacOS/DoNotDisturb Installer",
    args:       ["-install"],
    sudo:       true,
  }

  uninstall script: {
    executable: "#{staged_path}/DoNotDisturb Installer.app/Contents/MacOS/DoNotDisturb Installer",
    args:       ["-uninstall"],
    sudo:       true,
  }

  # No zap stanza required

end
