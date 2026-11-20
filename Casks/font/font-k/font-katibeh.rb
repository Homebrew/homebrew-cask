cask "font-katibeh" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/katibeh/Katibeh-Regular.ttf"
  name "Katibeh"
  homepage "https://fonts.google.com/specimen/Katibeh"

  font "Katibeh-Regular.ttf"

  zap :not_required
end
