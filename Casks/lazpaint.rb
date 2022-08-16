cask "lazpaint" do
  version "7.2"
  sha256 "593067a23a3ee43fc852be16a0048daa305a5751ab7afd6f3dfd27e1d6c43971"

  url "https://github.com/bgrabitmap/lazpaint/releases/download/v#{version}/lazpaint#{version}_macos64.dmg",
      verified: "github.com/bgrabitmap/lazpaint/"
  name "LazPaint"
  homepage "https://bgrabitmap.github.io/lazpaint/"

  app "LazPaint.app"
end
