cask "font-finger-paint" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fingerpaint/FingerPaint-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Finger Paint"
  homepage "https://fonts.google.com/specimen/Finger+Paint"

  font "FingerPaint-Regular.ttf"

  # No zap stanza required
end
