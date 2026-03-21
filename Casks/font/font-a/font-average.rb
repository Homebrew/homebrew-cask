cask "font-average" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/average/Average-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Average"
  homepage "https://fonts.google.com/specimen/Average"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Average",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Average-Regular.ttf"

  # No zap stanza required
end
