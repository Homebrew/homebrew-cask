cask "lazpaint" do
  version "7.1.5"
  sha256 "76954876437a62b2fb5364ddbc290a7d2c59db1d5fe90e22b62fb7cad9b12c20"

  # github.com/bgrabitmap/lazpaint/ was verified as official when first introduced to the cask
  url "https://github.com/bgrabitmap/lazpaint/releases/download/v#{version}/lazpaint#{version}_macos64.dmg"
  appcast "https://github.com/bgrabitmap/lazpaint/releases.atom"
  name "LazPaint"
  homepage "https://bgrabitmap.github.io/lazpaint/"

  app "LazPaint.app"
end
