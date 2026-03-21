cask "font-offside" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/offside/Offside-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Offside"
  homepage "https://fonts.google.com/specimen/Offside"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Offside",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Offside-Regular.ttf"

  # No zap stanza required
end
