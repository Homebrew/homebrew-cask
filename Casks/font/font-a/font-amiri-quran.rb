cask "font-amiri-quran" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/amiriquran/AmiriQuran-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Amiri Quran"
  homepage "https://fonts.google.com/specimen/Amiri+Quran"

  font "AmiriQuran-Regular.ttf"

  # No zap stanza required
end
