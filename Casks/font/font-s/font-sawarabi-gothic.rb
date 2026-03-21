cask "font-sawarabi-gothic" do
  version "20141215"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sawarabigothic/SawarabiGothic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sawarabi Gothic"
  homepage "https://fonts.google.com/specimen/Sawarabi+Gothic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sawarabi Gothic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SawarabiGothic-Regular.ttf"

  # No zap stanza required
end
