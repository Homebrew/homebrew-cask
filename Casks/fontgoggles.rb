cask "fontgoggles" do
  version "1.3.0"
  sha256 "09a8a261fb221b151e8e200f019da5c469c46a0dfa51bb1b0542e7f6f1729a0c"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"
end
