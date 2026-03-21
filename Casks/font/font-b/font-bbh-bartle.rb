cask "font-bbh-bartle" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bbhbartle/BBHBartle-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BBH Bartle"
  homepage "https://fonts.google.com/specimen/BBH+Bartle"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "BBH Bartle",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BBHBartle-Regular.ttf"

  # No zap stanza required
end
