cask "font-red-hat-mono" do
  version "1.030"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/redhatmono"
  name "Red Hat Mono"
  homepage "https://fonts.google.com/specimen/Red+Hat+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Red Hat Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RedHatMono-Italic[wght].ttf"
  font "RedHatMono[wght].ttf"

  # No zap stanza required
end
