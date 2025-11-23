cask "font-african-serif" do
  version "9.3.8"
  sha256 :no_check

  url "https://www.languagegeek.com/font/AfricanSerif.zip"
  name "African Serif"
  homepage "https://www.languagegeek.com/font/fontdownload.html"

  livecheck do
    url :homepage
    regex(/African\s+Serif.*?\(\s*v?(\d+(?:\.\d+)+)[^)]*\)/i)
  end

  font "African Serif REGULAR #{version.no_dots}.ttf"
  font "African Serif BOLD #{version.no_dots}.ttf"
  font "African Serif BOLD ITALIC #{version.no_dots}.ttf"
  font "African Serif ITALIC #{version.no_dots}.ttf"

  # No zap stanza required
end
