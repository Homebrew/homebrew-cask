cask "font-assistant" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/assistant/Assistant%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Assistant"
  homepage "https://fonts.google.com/specimen/Assistant"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Assistant",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Assistant[wght].ttf"

  # No zap stanza required
end
