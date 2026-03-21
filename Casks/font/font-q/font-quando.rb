cask "font-quando" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/quando/Quando-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Quando"
  homepage "https://fonts.google.com/specimen/Quando"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Quando",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Quando-Regular.ttf"

  # No zap stanza required
end
