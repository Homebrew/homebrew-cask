cask "font-average-sans" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/averagesans/AverageSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Average Sans"
  homepage "https://fonts.google.com/specimen/Average+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Average Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AverageSans-Regular.ttf"

  # No zap stanza required
end
