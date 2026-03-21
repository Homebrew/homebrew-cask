cask "font-rationale" do
  version "1.011"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rationale/Rationale-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rationale"
  homepage "https://fonts.google.com/specimen/Rationale"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rationale",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rationale-Regular.ttf"

  # No zap stanza required
end
