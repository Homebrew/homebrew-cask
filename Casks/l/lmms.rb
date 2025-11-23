cask "lmms" do
  version "1.2.2"
  sha256 "bcf9d6693cf4000df4a4c705afb8bbaa30a3caf4e146939c983cc31eecb66eb0"

  url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}-mac10.14.dmg",
      verified: "github.com/LMMS/lmms/"
  name "LMMS"
  desc "Music production software"
  homepage "https://lmms.io/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "LMMS.app"

  zap trash: [
        "~/.lmmsrc.xml",
        "~/Library/Saved Application State/io.lmms.savedState",
      ],
      rmdir: "~/Documents/lmms"

  caveats do
    requires_rosetta
  end
end
