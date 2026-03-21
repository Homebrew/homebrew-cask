cask "font-griffy" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/griffy/Griffy-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Griffy"
  homepage "https://fonts.google.com/specimen/Griffy"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Griffy",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Griffy-Regular.ttf"

  # No zap stanza required
end
