cask "font-chonburi" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chonburi/Chonburi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Chonburi"
  homepage "https://fonts.google.com/specimen/Chonburi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Chonburi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Chonburi-Regular.ttf"

  # No zap stanza required
end
