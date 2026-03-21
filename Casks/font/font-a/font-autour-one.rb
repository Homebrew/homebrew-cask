cask "font-autour-one" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/autourone/AutourOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Autour One"
  homepage "https://fonts.google.com/specimen/Autour+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Autour One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AutourOne-Regular.ttf"

  # No zap stanza required
end
