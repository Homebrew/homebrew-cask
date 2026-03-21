cask "font-inter-tight" do
  version "3.004"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/intertight"
  name "Inter Tight"
  homepage "https://fonts.google.com/specimen/Inter+Tight"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Inter Tight",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "InterTight-Italic[wght].ttf"
  font "InterTight[wght].ttf"

  # No zap stanza required
end
