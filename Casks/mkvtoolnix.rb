cask "mkvtoolnix" do
  version "59.0.0.1"
  sha256 "69a1c4542b1674738e3bb2d13c1c8c627e5886387843c480d31702dab91eef60"

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
