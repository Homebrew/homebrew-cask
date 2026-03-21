cask "font-hurricane" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hurricane/Hurricane-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hurricane"
  homepage "https://fonts.google.com/specimen/Hurricane"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hurricane",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Hurricane-Regular.ttf"

  # No zap stanza required
end
