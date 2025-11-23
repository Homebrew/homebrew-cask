cask "font-splash" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/splash/Splash-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Splash"
  homepage "https://fonts.google.com/specimen/Splash"

  font "Splash-Regular.ttf"

  # No zap stanza required
end
