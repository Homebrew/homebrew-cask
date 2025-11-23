cask "font-yuji-syuku" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yujisyuku/YujiSyuku-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yuji Syuku"
  homepage "https://fonts.google.com/specimen/Yuji+Syuku"

  font "YujiSyuku-Regular.ttf"

  # No zap stanza required
end
