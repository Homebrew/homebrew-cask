cask "mkvtoolnix-app" do
  version "97.0"
  sha256 "4cea68e2830e4262c5902056077f9d4d3c8c54a0e25e7d284907f926d47ff6ea"

  url "https://mkvtoolnix.download/macos/MKVToolNix-#{version}.dmg"
  name "MKVToolNix"
  desc "Set of tools to create, alter and inspect Matroska files (MKV)"
  homepage "https://mkvtoolnix.download/"

  livecheck do
    url "https://mkvtoolnix.download/macos/"
    regex(%r{href=.*?/MKVToolNix-(\d+(?:\.\d+)+)\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :ventura"

  app "MKVToolNix-#{version}.app"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvextract"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvinfo"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvmerge"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvpropedit"
  manpage "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/man/man1/mkvextract.1"
  manpage "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/man/man1/mkvinfo.1"
  manpage "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/man/man1/mkvmerge.1"
  manpage "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/man/man1/mkvpropedit.1"
  manpage "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/man/man1/mkvtoolnix-gui.1"

  zap trash: [
    "~/Library/Preferences/bunkus.org/mkvtoolnix-gui",
    "~/Library/Saved Application State/download.mkvtoolnix.MKVToolNix.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
