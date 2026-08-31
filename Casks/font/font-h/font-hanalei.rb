cask "font-hanalei" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hanalei/Hanalei-Regular.ttf"
  name "Hanalei"
  homepage "https://fonts.google.com/specimen/Hanalei"

  font "Hanalei-Regular.ttf"

  # No zap stanza required
end
