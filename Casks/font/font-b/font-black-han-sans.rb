cask "font-black-han-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/blackhansans/BlackHanSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Black Han Sans"
  homepage "https://fonts.google.com/specimen/Black+Han+Sans"

  font "BlackHanSans-Regular.ttf"

  # No zap stanza required
end
