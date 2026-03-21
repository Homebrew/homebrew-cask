cask "font-fragment-mono" do
  version "1.011"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/fragmentmono"
  name "Fragment Mono"
  homepage "https://fonts.google.com/specimen/Fragment+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fragment Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FragmentMono-Italic.ttf"
  font "FragmentMono-Regular.ttf"

  # No zap stanza required
end
