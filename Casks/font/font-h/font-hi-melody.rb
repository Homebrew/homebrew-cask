cask "font-hi-melody" do
  version "3.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/himelody/HiMelody-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hi Melody"
  homepage "https://fonts.google.com/specimen/Hi+Melody"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hi Melody",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HiMelody-Regular.ttf"

  # No zap stanza required
end
