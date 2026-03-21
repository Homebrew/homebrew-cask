cask "font-pushster" do
  version "2.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pushster/Pushster-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pushster"
  homepage "https://fonts.google.com/specimen/Pushster"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pushster",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Pushster-Regular.ttf"

  # No zap stanza required
end
