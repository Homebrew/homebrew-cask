cask "lazpaint" do
  version "7.1.6"
  sha256 "75088f275e71d6dbd7a76c6ba98083722f2f535fa7f7fa4f839b8f8650f1d862"

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
end
