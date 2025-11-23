cask "font-african-sans" do
  version "9.3.8"
  sha256 :no_check

  url "https://www.languagegeek.com/font/AfricanSans.zip"
  name "African Sans"
  homepage "https://www.languagegeek.com/font/fontdownload.html"

  livecheck do
    url :homepage
    regex(/African\s+Sans\s+Serif.*?\(\s*v?(\d+(?:\.\d+)+)[^)]*\)/i)
  end

  font "African Sans REGULAR #{version.no_dots}.ttf"
  font "African Sans BOLD #{version.no_dots}.ttf"
  font "African Sans BOLD ITALIC #{version.no_dots}.ttf"
  font "African Sans ITALIC #{version.no_dots}.ttf"

  # No zap stanza required
end
