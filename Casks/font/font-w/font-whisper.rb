cask "font-whisper" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/whisper/Whisper-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Whisper"
  homepage "https://fonts.google.com/specimen/Whisper"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Whisper",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Whisper-Regular.ttf"

  # No zap stanza required
end
