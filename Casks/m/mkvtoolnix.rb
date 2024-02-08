cask "mkvtoolnix" do
  on_el_capitan :or_older do
    version "29.0.0"
    sha256 "209578d5d25adb37a2cf857139afb35a421a64b104c2d59af0476d609037244d"
  end
  on_sierra do
    version "41.0.0"
    sha256 "2eb34d57209f6dc4d8ec9809028affb0ce8a7edad8370b36abf8996edbb9ac86"
  end
  on_high_sierra do
    version "41.0.0"
    sha256 "2eb34d57209f6dc4d8ec9809028affb0ce8a7edad8370b36abf8996edbb9ac86"
  end
  on_mojave do
    version "53.0.0"
    sha256 "bb6d0ba4e0052b2831de0ae29ef3d0d4c7b4d0933b258455c248c1a1c5f913a0"
  end
  on_catalina :or_newer do
    version "82.0"
    sha256 "f1c627c612b6dc7b3b0a386401de386409b6c46a93b36d04d9255c71ac50aad3"
  end

  url "https://mkvtoolnix.download/macos/MKVToolNix-#{version}.dmg"
  name "MKVToolNix"
  desc "Set of tools to create, alter and inspect Matroska files (MKV)"
  homepage "https://mkvtoolnix.download/"

  livecheck do
    url "https://mkvtoolnix.download/macos/"
    regex(%r{href=.*?/MKVToolNix-(\d+(?:\.\d+)+)\.dmg}i)
  end

  conflicts_with formula: "mkvtoolnix"

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
end
