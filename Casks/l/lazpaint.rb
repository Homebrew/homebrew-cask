cask "lazpaint" do
  version "7.3"
  sha256 "eaac2b5776ad229a0f4496c407d4cf648dcc36626f2574486f0528916aa7a61c"

  url "https://github.com/bgrabitmap/lazpaint/releases/download/v#{version}/lazpaint#{version}_macos64.dmg",
      verified: "github.com/bgrabitmap/lazpaint/"
  name "LazPaint"
  desc "Image editor written in Lazarus"
  homepage "https://bgrabitmap.github.io/lazpaint/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "LazPaint.app"

  zap trash: [
    "~/.config/lazpaint",
    "~/.config/lazpaint.cfg",
    "~/Library/Caches/com.company.lazpaint",
    "~/Library/HTTPStorages/com.company.lazpaint",
    "~/Library/Saved Application State/com.company.lazpaint.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
