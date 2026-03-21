cask "font-schibsted-grotesk" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/schibstedgrotesk"
  name "Schibsted Grotesk"
  homepage "https://fonts.google.com/specimen/Schibsted+Grotesk"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Schibsted Grotesk",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SchibstedGrotesk-Italic[wght].ttf"
  font "SchibstedGrotesk[wght].ttf"

  # No zap stanza required
end
