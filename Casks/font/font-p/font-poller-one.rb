cask "font-poller-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pollerone/PollerOne.ttf",
      verified: "github.com/google/fonts/"
  name "Poller One"
  homepage "https://fonts.google.com/specimen/Poller+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Poller One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PollerOne.ttf"

  # No zap stanza required
end
