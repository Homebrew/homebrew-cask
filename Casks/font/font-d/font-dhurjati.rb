cask "font-dhurjati" do
  version "1.0.5"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dhurjati/Dhurjati-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dhurjati"
  homepage "https://fonts.google.com/specimen/Dhurjati"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Dhurjati",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Dhurjati-Regular.ttf"

  # No zap stanza required
end
