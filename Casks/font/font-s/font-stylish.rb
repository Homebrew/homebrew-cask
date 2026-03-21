cask "font-stylish" do
  version "1.64"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stylish/Stylish-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Stylish"
  homepage "https://fonts.google.com/specimen/Stylish"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Stylish",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Stylish-Regular.ttf"

  # No zap stanza required
end
