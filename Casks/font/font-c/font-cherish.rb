cask "font-cherish" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cherish/Cherish-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cherish"
  homepage "https://fonts.google.com/specimen/Cherish"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cherish",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Cherish-Regular.ttf"

  # No zap stanza required
end
