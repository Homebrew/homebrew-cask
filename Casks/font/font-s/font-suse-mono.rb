cask "font-suse-mono" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/susemono"
  name "SUSE Mono"
  homepage "https://fonts.google.com/specimen/SUSE+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "SUSE Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SUSEMono-Italic[wght].ttf"
  font "SUSEMono[wght].ttf"

  # No zap stanza required
end
