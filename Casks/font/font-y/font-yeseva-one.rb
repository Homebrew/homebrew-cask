cask "font-yeseva-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yesevaone/YesevaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yeseva One"
  homepage "https://fonts.google.com/specimen/Yeseva+One"

  font "YesevaOne-Regular.ttf"

  # No zap stanza required
end
