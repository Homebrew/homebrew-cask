cask "font-mulish" do
  version "3.603"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mulish"
  name "Mulish"
  homepage "https://fonts.google.com/specimen/Mulish"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mulish",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Mulish-Italic[wght].ttf"
  font "Mulish[wght].ttf"

  # No zap stanza required
end
