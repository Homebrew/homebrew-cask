cask "font-rochester" do
  version "1.006"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/rochester/Rochester-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rochester"
  homepage "https://fonts.google.com/specimen/Rochester"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rochester",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rochester-Regular.ttf"

  # No zap stanza required
end
