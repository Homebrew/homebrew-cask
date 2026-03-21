cask "font-joti-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jotione/JotiOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Joti One"
  homepage "https://fonts.google.com/specimen/Joti+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Joti One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JotiOne-Regular.ttf"

  # No zap stanza required
end
