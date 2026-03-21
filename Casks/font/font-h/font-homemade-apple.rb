cask "font-homemade-apple" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/homemadeapple/HomemadeApple-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Homemade Apple"
  homepage "https://fonts.google.com/specimen/Homemade+Apple"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Homemade Apple",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HomemadeApple-Regular.ttf"

  # No zap stanza required
end
