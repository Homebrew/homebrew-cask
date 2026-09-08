cask "font-whisper" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/whisper/Whisper-Regular.ttf"
  name "Whisper"
  homepage "https://fonts.google.com/specimen/Whisper"

  font "Whisper-Regular.ttf"

  # No zap stanza required
end
