cask "font-yuyu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yuyu/Yuyu-Regular.ttf"
  name "Yuyu"
  homepage "https://github.com/JuliaGarciaLopez/Yuyu-Font"

  font "Yuyu-Regular.ttf"

  # No zap stanza required
end
