cask "font-ruthie" do
  version "1.012"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ruthie/Ruthie-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ruthie"
  homepage "https://fonts.google.com/specimen/Ruthie"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ruthie",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ruthie-Regular.ttf"

  # No zap stanza required
end
