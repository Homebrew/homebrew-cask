cask "font-style-script" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stylescript/StyleScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Style Script"
  homepage "https://fonts.google.com/specimen/Style+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Style Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "StyleScript-Regular.ttf"

  # No zap stanza required
end
