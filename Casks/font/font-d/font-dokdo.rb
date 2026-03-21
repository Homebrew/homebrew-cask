cask "font-dokdo" do
  version "2.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dokdo/Dokdo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dokdo"
  homepage "https://fonts.google.com/specimen/Dokdo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Dokdo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Dokdo-Regular.ttf"

  # No zap stanza required
end
