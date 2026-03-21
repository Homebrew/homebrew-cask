cask "font-yatra-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yatraone/YatraOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yatra One"
  homepage "https://fonts.google.com/specimen/Yatra+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yatra One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YatraOne-Regular.ttf"

  # No zap stanza required
end
