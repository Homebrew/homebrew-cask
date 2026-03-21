cask "font-gotu" do
  version "2.320"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gotu/Gotu-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gotu"
  homepage "https://fonts.google.com/specimen/Gotu"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gotu",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gotu-Regular.ttf"

  # No zap stanza required
end
