cask "font-pangolin" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pangolin/Pangolin-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pangolin"
  homepage "https://fonts.google.com/specimen/Pangolin"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pangolin",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Pangolin-Regular.ttf"

  # No zap stanza required
end
