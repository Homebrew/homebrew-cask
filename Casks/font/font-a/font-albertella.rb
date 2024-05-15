cask "font-albertella" do
  version :latest
  sha256 :no_check

  url "https://moji-waku.com/download/albertella.zip"
  name "Albertella"
  desc "Ancient biology styled font inspired by trilobite"
  homepage "https://moji-waku.com/albertella/index.html"

  font "albertella/Albertella-Light.otf"

  # No zap stanza required
end
