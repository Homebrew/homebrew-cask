cask "mkvtoolnix" do
  version "60.0.0"
  sha256 "d6a4b4a26d337098af78e8eeb353249e21858dc568d24cacfb8b1d5fc9929a13"

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
