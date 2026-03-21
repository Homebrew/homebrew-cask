cask "font-cinzel-decorative" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cinzeldecorative"
  name "Cinzel Decorative"
  homepage "https://fonts.google.com/specimen/Cinzel+Decorative"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cinzel Decorative",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CinzelDecorative-Black.ttf"
  font "CinzelDecorative-Bold.ttf"
  font "CinzelDecorative-Regular.ttf"

  # No zap stanza required
end
