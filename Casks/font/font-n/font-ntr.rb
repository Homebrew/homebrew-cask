cask "font-ntr" do
  version "1.0.5"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ntr/NTR-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "NTR"
  homepage "https://fonts.google.com/specimen/NTR"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "NTR",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NTR-Regular.ttf"

  # No zap stanza required
end
