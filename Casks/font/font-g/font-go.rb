cask "font-go" do
  version :latest
  sha256 :no_check

  url "https://go.googlesource.com/image/+archive/master/font/gofont/ttfs.tar.gz"
  name "Go"
  homepage "https://go.googlesource.com/image/+/master/font/gofont/ttfs/README"

  font "Go-Bold-Italic.ttf"
  font "Go-Bold.ttf"
  font "Go-Italic.ttf"
  font "Go-Medium-Italic.ttf"
  font "Go-Medium.ttf"
  font "Go-Mono-Bold-Italic.ttf"
  font "Go-Mono-Bold.ttf"
  font "Go-Mono-Italic.ttf"
  font "Go-Mono.ttf"
  font "Go-Regular.ttf"
  font "Go-Smallcaps-Italic.ttf"
  font "Go-Smallcaps.ttf"

  # No zap stanza required
end
