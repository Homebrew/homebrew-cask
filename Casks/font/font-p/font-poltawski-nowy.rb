cask "font-poltawski-nowy" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/poltawskinowy"
  name "Poltawski Nowy"
  homepage "https://fonts.google.com/specimen/Poltawski+Nowy"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Poltawski Nowy",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PoltawskiNowy-Italic[wght].ttf"
  font "PoltawskiNowy[wght].ttf"

  # No zap stanza required
end
