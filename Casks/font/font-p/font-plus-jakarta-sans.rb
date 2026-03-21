cask "font-plus-jakarta-sans" do
  version "2.071"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/plusjakartasans"
  name "Plus Jakarta Sans"
  homepage "https://fonts.google.com/specimen/Plus+Jakarta+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Plus Jakarta Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlusJakartaSans-Italic[wght].ttf"
  font "PlusJakartaSans[wght].ttf"

  # No zap stanza required
end
