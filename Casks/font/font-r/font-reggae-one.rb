cask "font-reggae-one" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/reggaeone/ReggaeOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Reggae One"
  homepage "https://fonts.google.com/specimen/Reggae+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Reggae One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ReggaeOne-Regular.ttf"

  # No zap stanza required
end
