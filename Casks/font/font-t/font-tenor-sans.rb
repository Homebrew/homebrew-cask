cask "font-tenor-sans" do
  version "1.1"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tenorsans/TenorSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tenor Sans"
  homepage "https://fonts.google.com/specimen/Tenor+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tenor Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TenorSans-Regular.ttf"

  # No zap stanza required
end
