cask "font-fauna-one" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/faunaone/FaunaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fauna One"
  homepage "https://fonts.google.com/specimen/Fauna+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fauna One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FaunaOne-Regular.ttf"

  # No zap stanza required
end
