cask "font-stalinist-one" do
  version "3.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stalinistone/StalinistOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Stalinist One"
  homepage "https://fonts.google.com/specimen/Stalinist+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Stalinist One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "StalinistOne-Regular.ttf"

  # No zap stanza required
end
