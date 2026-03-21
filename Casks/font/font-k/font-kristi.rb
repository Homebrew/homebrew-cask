cask "font-kristi" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kristi/Kristi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kristi"
  homepage "https://fonts.google.com/specimen/Kristi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kristi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kristi-Regular.ttf"

  # No zap stanza required
end
