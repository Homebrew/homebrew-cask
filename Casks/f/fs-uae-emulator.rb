cask "fs-uae-emulator" do
  arch arm: "ARM64", intel: "x86-64"

  version "3.2.35"
  sha256 arm:   "ef8115986c0ddb987dc024f159da59f788b96d20f7b77ca97b465a9f4492eff8",
         intel: "f291c2c93f575115c4ffbc73be3144bbec88e39e590a1932e443e67eb735128f"

  url "https://github.com/FrodeSolheim/fs-uae/releases/download/v#{version}/FS-UAE_#{version}_macOS_#{arch}.dmg",
      verified: "github.com/FrodeSolheim/fs-uae/"
  name "FS-UAE"
  desc "Amiga emulator"
  homepage "https://fs-uae.net/"

  livecheck do
    url "https://fs-uae.net/download/macos/"
    regex(/href=.*?FS[._-]UAE[._-](\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}/i)
  end

  depends_on cask: "fs-uae-launcher"

  app "FS-UAE.app"

  zap trash: [
    "~/Library/Preferences/fs-uae",
    "~/Library/Saved Application State/no.fengestad.fs-uae.savedState",
  ]
end
