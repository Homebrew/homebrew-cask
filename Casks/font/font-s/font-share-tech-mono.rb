cask "font-share-tech-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sharetechmono/ShareTechMono-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Share Tech Mono"
  homepage "https://fonts.google.com/specimen/Share+Tech+Mono"

  font "ShareTechMono-Regular.ttf"

  # No zap stanza required
end
