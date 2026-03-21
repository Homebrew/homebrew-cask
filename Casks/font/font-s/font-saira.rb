cask "font-saira" do
  version "1.101"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/saira"
  name "Saira"
  homepage "https://fonts.google.com/specimen/Saira"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Saira",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Saira-Italic[wdth,wght].ttf"
  font "Saira[wdth,wght].ttf"

  # No zap stanza required
end
