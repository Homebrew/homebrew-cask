cask "lazpaint" do
  version "7.1.4"
  sha256 "dd72a7fdd6d71bb40b091f23ae4bacd70d14fcb770cda884728e93861e9f7cf5"

  # github.com/bgrabitmap/lazpaint/ was verified as official when first introduced to the cask
  url "https://github.com/bgrabitmap/lazpaint/releases/download/v#{version}/lazpaint#{version}_macos64.dmg"
  appcast "https://github.com/bgrabitmap/lazpaint/releases.atom"
  name "LazPaint"
  homepage "https://bgrabitmap.github.io/lazpaint/"

  app "LazPaint.app"
end
