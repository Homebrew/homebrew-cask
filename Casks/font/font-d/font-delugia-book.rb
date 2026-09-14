cask "font-delugia-book" do
  version "2404.23"
  sha256 "3df81463053978e0f37bf897930cb9a6bfd64be96d06497451ca846ac6ee0bfb"

  url "https://github.com/adam7/delugia-code/releases/download/v#{version}/delugia-book.zip"
  name "Delugia Code"
  homepage "https://github.com/adam7/delugia-code"

  font "delugia-book/DelugiaBook-Bold.ttf"
  font "delugia-book/DelugiaBook-BoldItalic.ttf"
  font "delugia-book/DelugiaBook-Italic.ttf"
  font "delugia-book/DelugiaBook.ttf"
  font "delugia-book/DelugiaBookLight-Italic.ttf"
  font "delugia-book/DelugiaBookLight.ttf"

  # No zap stanza required
end
