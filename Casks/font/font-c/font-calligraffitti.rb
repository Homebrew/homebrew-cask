cask "font-calligraffitti" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/calligraffitti/Calligraffitti-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Calligraffitti"
  homepage "https://fonts.google.com/specimen/Calligraffitti"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Calligraffitti",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Calligraffitti-Regular.ttf"

  # No zap stanza required
end
