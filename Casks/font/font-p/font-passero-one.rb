cask "font-passero-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/passeroone/PasseroOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Passero One"
  homepage "https://fonts.google.com/specimen/Passero+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Passero One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PasseroOne-Regular.ttf"

  # No zap stanza required
end
