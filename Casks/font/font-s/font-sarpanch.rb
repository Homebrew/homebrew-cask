cask "font-sarpanch" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sarpanch"
  name "Sarpanch"
  homepage "https://fonts.google.com/specimen/Sarpanch"

  font "Sarpanch-Black.ttf"
  font "Sarpanch-Bold.ttf"
  font "Sarpanch-ExtraBold.ttf"
  font "Sarpanch-Medium.ttf"
  font "Sarpanch-Regular.ttf"
  font "Sarpanch-SemiBold.ttf"

  # No zap stanza required
end
