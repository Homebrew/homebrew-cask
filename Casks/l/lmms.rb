cask "lmms" do
  on_high_sierra :or_older do
    version "1.2.2"
    sha256 "e5aa82086dc67817a763f3e54aa0786cdca590f26981584c07f9ff2ff1fb0503"

    url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}-mac10.13.dmg",
        verified: "github.com/LMMS/lmms/"
  end
  on_mojave :or_newer do
    version "1.2.2"
    sha256 "bcf9d6693cf4000df4a4c705afb8bbaa30a3caf4e146939c983cc31eecb66eb0"

    url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}-mac10.14.dmg",
        verified: "github.com/LMMS/lmms/"
  end

  name "LMMS"
  desc "Music production software"
  homepage "https://lmms.io/"

  depends_on macos: ">= :high_sierra"

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
