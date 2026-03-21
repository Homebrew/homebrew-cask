cask "font-hubballi" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hubballi/Hubballi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hubballi"
  homepage "https://fonts.google.com/specimen/Hubballi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hubballi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Hubballi-Regular.ttf"

  # No zap stanza required
end
