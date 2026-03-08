cask "font-noto-sans-phoenician" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansphoenician/NotoSansPhoenician-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Phoenician"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Phoenician"

  font "NotoSansPhoenician-Regular.ttf"

  # No zap stanza required
end
