cask "font-long-cang" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/longcang/LongCang-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Long Cang"
  homepage "https://fonts.google.com/specimen/Long+Cang"

  font "LongCang-Regular.ttf"

  # No zap stanza required
end
