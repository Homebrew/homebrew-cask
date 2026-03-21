cask "font-delius" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/delius/Delius-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Delius"
  homepage "https://fonts.google.com/specimen/Delius"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Delius",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Delius-Regular.ttf"

  # No zap stanza required
end
