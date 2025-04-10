cask "font-fira-mono" do
  version "4.202"
  sha256 "d86269657387f144d77ba12011124f30f423f70672e1576dc16f918bb16ddfe4"

  url "https://github.com/mozilla/Fira/archive/refs/tags/#{version}.tar.gz"
  name "Fira Mono"
  homepage "https://github.com/mozilla/Fira"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "ttf/FiraMono-Bold.ttf"
  font "ttf/FiraMono-Medium.ttf"
  font "ttf/FiraMono-Regular.ttf"

  # No zap stanza required
end
