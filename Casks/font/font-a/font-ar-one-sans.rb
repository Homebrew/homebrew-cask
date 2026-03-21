cask "font-ar-one-sans" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aronesans/AROneSans%5BARRR%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "AR One Sans"
  homepage "https://fonts.google.com/specimen/AR+One+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "AR One Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AROneSans[ARRR,wght].ttf"

  # No zap stanza required
end
