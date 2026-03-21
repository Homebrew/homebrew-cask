cask "font-bbh-hegarty" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bbhhegarty/BBHHegarty-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BBH Hegarty"
  homepage "https://fonts.google.com/specimen/BBH+Hegarty"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "BBH Hegarty",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BBHHegarty-Regular.ttf"

  # No zap stanza required
end
