cask "font-share-tech-mono" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sharetechmono/ShareTechMono-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Share Tech Mono"
  homepage "https://fonts.google.com/specimen/Share+Tech+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Share Tech Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ShareTechMono-Regular.ttf"

  # No zap stanza required
end
