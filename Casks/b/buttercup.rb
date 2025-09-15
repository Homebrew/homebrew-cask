cask "buttercup" do
  version "2.28.1"
  sha256 "b2399d44f23dd39b851989e5aee2651fe1b1bdb37a525b7553a7ae8630a1b8e6"

  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-mac-x64-#{version}.dmg",
      verified: "github.com/buttercup/buttercup-desktop/"
  name "Buttercup"
  desc "Javascript Secrets Vault - Multi-Platform Desktop Application"
  homepage "https://buttercup.pw/"

  # https://gist.github.com/perry-mitchell/43ebfcec4d874b77a704be1d4f2262e6
  deprecate! date: "2025-07-17", because: :discontinued

  auto_updates true

  app "Buttercup.app"

  zap trash: [
    "~/Library/Application Support/Buttercup",
    "~/Library/Application Support/Buttercup-nodejs",
    "~/Library/Logs/Buttercup-nodejs",
    "~/Library/Preferences/Buttercup-nodejs",
    "~/Library/Preferences/pw.buttercup.desktop.plist",
    "~/Library/Saved Application State/pw.buttercup.desktop.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
