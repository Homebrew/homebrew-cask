cask "font-gloock" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gloock/Gloock-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gloock"
  homepage "https://fonts.google.com/specimen/Gloock"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gloock",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gloock-Regular.ttf"

  # No zap stanza required
end
