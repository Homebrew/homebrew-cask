cask "mkvtoolnix" do
  if MacOS.version <= :yosemite
    version "24.0.0"
    sha256 "758da621d3a92358885333b767d64b024197a8147a339b1a0d14e938673452f9"
  elsif MacOS.version <= :el_capitan
    version "29.0.0"
    sha256 "209578d5d25adb37a2cf857139afb35a421a64b104c2d59af0476d609037244d"
  elsif MacOS.version <= :high_sierra
    version "41.0.0"
    sha256 "2eb34d57209f6dc4d8ec9809028affb0ce8a7edad8370b36abf8996edbb9ac86"
  elsif MacOS.version <= :mojave
    version "53.0.0"
    sha256 "bb6d0ba4e0052b2831de0ae29ef3d0d4c7b4d0933b258455c248c1a1c5f913a0"
  else
    version "64.0.0"
    sha256 "72999f645e7e5989cd33efcd7383514874c4e65b03ad964f621c40a1254523cc"
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
  depends_on macos: ">= :yosemite"

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
