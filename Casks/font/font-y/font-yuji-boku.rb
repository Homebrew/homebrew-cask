cask "font-yuji-boku" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yujiboku/YujiBoku-Regular.ttf"
  name "Yuji Boku"
  homepage "https://fonts.google.com/specimen/Yuji+Boku"

  font "YujiBoku-Regular.ttf"

  # No zap stanza required
end
