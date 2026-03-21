cask "font-girassol" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/girassol/Girassol-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Girassol"
  homepage "https://fonts.google.com/specimen/Girassol"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Girassol",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Girassol-Regular.ttf"

  # No zap stanza required
end
