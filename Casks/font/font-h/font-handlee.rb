cask "font-handlee" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/handlee/Handlee-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Handlee"
  homepage "https://fonts.google.com/specimen/Handlee"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Handlee",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Handlee-Regular.ttf"

  # No zap stanza required
end
