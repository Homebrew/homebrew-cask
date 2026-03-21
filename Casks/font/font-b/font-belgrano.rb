cask "font-belgrano" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/belgrano/Belgrano-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Belgrano"
  homepage "https://fonts.google.com/specimen/Belgrano"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Belgrano",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Belgrano-Regular.ttf"

  # No zap stanza required
end
