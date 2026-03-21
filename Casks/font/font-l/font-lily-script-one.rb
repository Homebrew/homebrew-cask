cask "font-lily-script-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lilyscriptone/LilyScriptOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lily Script One"
  homepage "https://fonts.google.com/specimen/Lily+Script+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lily Script One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LilyScriptOne-Regular.ttf"

  # No zap stanza required
end
