cask "mkvtoolnix" do
  version "52.0.0"
  sha256 "7041a40ef988c9a3a878d7561e574d9ed74500c01a2585d0953b405b65971bf1"

  url "https://mkvtoolnix.download/macos/MKVToolNix-#{version}.dmg"
  appcast "https://mkvtoolnix.download/macos/"
  name "MKVToolNix"
  desc "Set of tools to create, alter and inspect Matroska files (MKV)"
  homepage "https://mkvtoolnix.download/"

  conflicts_with formula: "mkvtoolnix"
  depends_on macos: ">= :mojave"

  app "MKVToolNix-#{version.major_minor_patch}.app"
  binary "#{appdir}/MKVToolNix-#{version.major_minor_patch}.app/Contents/MacOS/mkvextract"
  binary "#{appdir}/MKVToolNix-#{version.major_minor_patch}.app/Contents/MacOS/mkvinfo"
  binary "#{appdir}/MKVToolNix-#{version.major_minor_patch}.app/Contents/MacOS/mkvmerge"
  binary "#{appdir}/MKVToolNix-#{version.major_minor_patch}.app/Contents/MacOS/mkvpropedit"
end
