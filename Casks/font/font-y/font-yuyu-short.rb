cask "font-yuyu-short" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yuyushort/YuyuShort-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yuyu Short"
  homepage "https://fonts.google.com/specimen/Yuyu+Short"

  font "YuyuShort-Regular.ttf"

  # No zap stanza required
end
