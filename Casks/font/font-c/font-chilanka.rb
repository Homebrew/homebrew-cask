cask "font-chilanka" do
  version "1.600"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chilanka/Chilanka-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Chilanka"
  homepage "https://fonts.google.com/specimen/Chilanka"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Chilanka",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Chilanka-Regular.ttf"

  # No zap stanza required
end
