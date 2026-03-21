cask "font-yarndings-12-charted" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yarndings12charted/Yarndings12Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yarndings 12 Charted"
  homepage "https://fonts.google.com/specimen/Yarndings+12+Charted"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yarndings 12 Charted",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Yarndings12Charted-Regular.ttf"

  # No zap stanza required
end
