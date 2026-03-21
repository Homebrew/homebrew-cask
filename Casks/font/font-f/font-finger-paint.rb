cask "font-finger-paint" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fingerpaint/FingerPaint-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Finger Paint"
  homepage "https://fonts.google.com/specimen/Finger+Paint"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Finger Paint",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FingerPaint-Regular.ttf"

  # No zap stanza required
end
