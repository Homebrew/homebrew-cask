cask "font-assistant" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/assistant/Assistant%5Bwght%5D.ttf"
  name "Assistant"
  homepage "https://fonts.google.com/specimen/Assistant"

  font "Assistant[wght].ttf"

  zap :not_required
end
