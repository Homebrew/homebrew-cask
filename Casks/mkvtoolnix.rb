cask "mkvtoolnix" do
  version "56.1.0"
  sha256 "fd64c8691093e8edc5932d37c34431a577dbd003ca45f015471584c8bca9e4c2"

  url "https://mkvtoolnix.download/macos/MKVToolNix-#{version}.dmg"
  name "MKVToolNix"
  desc "Set of tools to create, alter and inspect Matroska files (MKV)"
  homepage "https://mkvtoolnix.download/"

  livecheck do
    url "https://mkvtoolnix.download/macos/"
    strategy :page_match
    regex(%r{href=.*?/MKVToolNix-(\d+(?:\.\d+)*)\.dmg}i)
  end

  conflicts_with formula: "mkvtoolnix"
  depends_on macos: ">= :catalina"

  app "MKVToolNix-#{version.major_minor_patch}.app"
  binary "#{appdir}/MKVToolNix-#{version.major_minor_patch}.app/Contents/MacOS/mkvextract"
  binary "#{appdir}/MKVToolNix-#{version.major_minor_patch}.app/Contents/MacOS/mkvinfo"
  binary "#{appdir}/MKVToolNix-#{version.major_minor_patch}.app/Contents/MacOS/mkvmerge"
  binary "#{appdir}/MKVToolNix-#{version.major_minor_patch}.app/Contents/MacOS/mkvpropedit"
end
