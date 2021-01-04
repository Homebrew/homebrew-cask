cask "gfxutil" do
  version "1.80b"
  sha256 "78e4cc27854184a6f87296d10c88983aa4c04221bcc8e86105b06ce4f6bbe83c"

  url "https://github.com/acidanthera/gfxutil/releases/download/#{version}/gfxutil-#{version}-RELEASE.zip"
  appcast "https://github.com/acidanthera/gfxutil/releases.atom"
  name "gfxutil"
  homepage "https://github.com/acidanthera/gfxutil/"

  binary "bin/gfxutil"
end
