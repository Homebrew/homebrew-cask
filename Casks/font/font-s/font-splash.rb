cask "font-splash" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/splash/Splash-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Splash"
  homepage "https://fonts.google.com/specimen/Splash"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Splash",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Splash-Regular.ttf"

  # No zap stanza required
end
