cask "font-konkhmer-sleokchher" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/konkhmersleokchher/KonkhmerSleokchher-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Konkhmer Sleokchher"
  homepage "https://fonts.google.com/specimen/Konkhmer+Sleokchher"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Konkhmer Sleokchher",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KonkhmerSleokchher-Regular.ttf"

  # No zap stanza required
end
