cask "font-ruslan-display" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ruslandisplay/RuslanDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ruslan Display"
  homepage "https://fonts.google.com/specimen/Ruslan+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ruslan Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RuslanDisplay-Regular.ttf"

  # No zap stanza required
end
