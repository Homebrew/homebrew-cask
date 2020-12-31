cask "lazpaint" do
  version "7.1.6"
  sha256 "75088f275e71d6dbd7a76c6ba98083722f2f535fa7f7fa4f839b8f8650f1d862"

  url "https://github.com/bgrabitmap/lazpaint/releases/download/v#{version}/lazpaint#{version}_macos64.dmg",
      verified: "github.com/bgrabitmap/lazpaint/"
  appcast "https://github.com/bgrabitmap/lazpaint/releases.atom"
  name "LazPaint"
  homepage "https://bgrabitmap.github.io/lazpaint/"

  app "LazPaint.app"
end
