cask "font-original-surfer" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/originalsurfer/OriginalSurfer-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Original Surfer"
  homepage "https://fonts.google.com/specimen/Original+Surfer"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Original Surfer",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "OriginalSurfer-Regular.ttf"

  # No zap stanza required
end
