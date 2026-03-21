cask "font-yrsa" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/yrsa"
  name "Yrsa"
  homepage "https://fonts.google.com/specimen/Yrsa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yrsa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Yrsa-Italic[wght].ttf"
  font "Yrsa[wght].ttf"

  # No zap stanza required
end
