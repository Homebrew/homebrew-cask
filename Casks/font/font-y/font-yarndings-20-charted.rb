cask "font-yarndings-20-charted" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yarndings20charted/Yarndings20Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yarndings 20 Charted"
  homepage "https://fonts.google.com/specimen/Yarndings+20+Charted"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yarndings 20 Charted",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Yarndings20Charted-Regular.ttf"

  # No zap stanza required
end
